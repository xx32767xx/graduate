import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import curve_fit
from sklearn.metrics import r2_score


def draw_full():

    # 1. 填入你的实验数据
    grid_sizes = np.array([1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 108,
                           120, 150, 180, 216, 240, 270, 300, 324])
    total_times = np.array([1.1325, 0.9318, 0.9247, 0.9277, 0.9257, 0.9247, 0.9236, 0.9226,
                            0.9236, 0.9247, 0.9236, 0.9236, 1.0158, 1.0148, 1.0138, 1.0127,
                            1.0895, 1.0885, 1.0885, 1.1346])

    # 2. 定义拟合函数：阶梯函数 + 初始开销修正
    # 逻辑：Time = Overhead + Round_Time * ceil(Grid / SM_Count)
    def step_model(x, overhead, round_time):
        sm_count = 108  # A100 的 SM 数量
        rounds = np.ceil(x / sm_count)
        return overhead + round_time * rounds

    # 进行参数拟合
    popt, _ = curve_fit(step_model, grid_sizes[1:], total_times[1:])  # 略过 grid=1 的极端异常值进行拟合

    # 3. 绘图设置
    plt.figure(figsize=(10, 6), dpi=120)
    plt.style.use('seaborn-v0_8-muted')  # 使用高对比度美观风格
    plt.grid(True, linestyle='--', alpha=0.6)

    # 绘制原始数据点
    plt.scatter(grid_sizes, total_times, color='#e74c3c', label='Experimental Data', s=50, edgecolors='black', zorder=3)

    # 绘制拟合曲线
    x_fit = np.linspace(1, 350, 1000)
    y_fit = step_model(x_fit, *popt)
    plt.plot(x_fit, y_fit, color='#3498db', label='Step-wise Fitting Model', linewidth=2, linestyle='-', zorder=2)

    # 4. 图表修饰
    plt.title('GPU Execution Time vs. Grid Size (A100)', fontsize=14, fontweight='bold', pad=15)
    plt.xlabel('Grid Size (Number of Blocks)', fontsize=12)
    plt.ylabel('Total Execution Time (ms)', fontsize=12)

    # 标注关键饱和点
    for pt in [108, 216, 324]:
        plt.axvline(x=pt, color='gray', linestyle=':', alpha=0.5)
        plt.text(pt + 2, 0.85, f'SM Limit ({pt})', rotation=90, verticalalignment='bottom', fontsize=9, color='gray')

    # 标注启动开销 (Overhead)
    plt.annotate(f'Launch Overhead: {popt[0]:.3f} ms', xy=(1, 1.13), xytext=(40, 1.15),
                 arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=5))

    plt.legend(loc='lower right', frameon=True, shadow=True)
    plt.tight_layout()

    # 保存并展示
    # plt.savefig("gpu_saturation_analysis.png")
    plt.show()


def draw_log():
    grid_sizes = np.array([1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 108,
                           120, 150, 180, 216, 240, 270, 300, 324])
    avg_per_block = np.array([1.132544, 0.093184, 0.046234, 0.030925, 0.023142, 0.018493,
                              0.015394, 0.013180, 0.011546, 0.010274, 0.009236, 0.008552,
                              0.008465, 0.006765, 0.005632, 0.004689, 0.004540, 0.004032,
                              0.003628, 0.003502])

    # 2. 定义反比例拟合函数 (Physical Model)
    # a 是 Overhead, b 是理想状态下的单位耗时
    def inverse_model(x, a, b):
        return a / x + b

    # 进行拟合
    popt, _ = curve_fit(inverse_model, grid_sizes, avg_per_block)
    a_fit, b_fit = popt

    # 3. 绘图
    plt.figure(figsize=(10, 6), dpi=120)
    plt.style.use('seaborn-v0_8-whitegrid')

    # 绘制原始数据
    plt.scatter(grid_sizes, avg_per_block, color='#E74C3C', label='Measured Data', s=45, zorder=3)

    # 绘制拟合曲线
    x_line = np.linspace(1, 324, 500)
    y_line = inverse_model(x_line, *popt)
    plt.plot(x_line, y_line, color='#3498DB', label=f'Inverse Fit: $y = {a_fit:.3f}/x + {b_fit:.4f}$', linewidth=2.5,
             zorder=2)

    # 4. 美化与标注
    plt.title('GPU Efficiency Analysis: Inverse Proportional Fitting', fontsize=14, fontweight='bold')
    plt.xlabel('Grid Size ($N$)', fontsize=12)
    plt.ylabel('Avg Time per Block (ms)', fontsize=12)

    # 核心修正：由于 y 轴跨度太大，建议设置 y 轴范围或使用对数坐标
    plt.ylim(-0.05, 1.2)


    plt.legend(fontsize=10)
    plt.tight_layout()
    plt.show()

    print(f"拟合得到的启动开销 (a): {a_fit:.4f} ms")
    print(f"拟合得到的理想单位耗时 (b): {b_fit:.4f} ms")


def draw_shape():
    # 1. 实验数据输入
    bx = np.array([1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024])
    by = np.array([1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1])
    times = np.array([1.5496, 0.8389, 0.4717,  0.3833,0.2817,0.2333, 0.2306, 0.2286, 0.2288,  0.2287, 0.2278])

    # 计算比例特征值 R = by / bx
    ratios = by / bx

    # 2. 定义拟合函数
    def shape_ratio_model(r, alpha, gamma, beta):
        return alpha * (r ** gamma) + beta

    # 进行拟合 (使用 log 空间辅助初始猜测)
    popt, _ = curve_fit(shape_ratio_model, ratios, times, p0=[0.01, 0.5, 0.09])

    # 3. 绘图分析
    plt.figure(figsize=(10, 6), dpi=120)
    plt.style.use('ggplot')

    # 原始数据
    plt.scatter(ratios, times, color='firebrick', label='Measured Data', zorder=3)

    # 拟合曲线
    r_fit = np.logspace(np.log10(ratios.min()), np.log10(ratios.max()), 500)
    t_fit = shape_ratio_model(r_fit, *popt)
    plt.plot(r_fit, t_fit, color='royalblue', label=f'Fit: {popt[0]:.4f} * $(by/bx)^{{{popt[1]:.3f}}}$ + {popt[2]:.4f}',
             linewidth=2)

    # 设置对数坐标以便观察全貌
    plt.xscale('log')
    plt.title('Performance Impact of Block Shape Ratio (by/bx)', fontsize=14)
    plt.xlabel('Shape Ratio (by / bx)', fontsize=12)
    plt.ylabel('Execution Time (ms)', fontsize=12)
    plt.grid(True, which="both", ls="-", alpha=0.5)

    plt.legend()
    plt.show()

    print(f"拟合参数: alpha={popt[0]:.6f}, gamma={popt[1]:.6f}, beta={popt[2]:.6f}")


def draw_exp():
    # 1. 准备数据 (选取部分典型点进行展示，避免横轴太拥挤)
    labels = ['1,64', '1,256', '1,1024', '4,32', '16,16', '16,64', '64,8', '128,2', '256,4', '1024,1']
    avg_time = [235499.5, 238919.7, 261591.0, 212623.4, 246804.5, 257146.9, 205434.9, 191549.4, 203427.8, 261652.5]
    est_time = [259049.5, 265200.8, 282518.3, 238138.2, 264080.8, 277718.6, 230087.1, 214535.3, 225804.9, 282584.7]
    avg_time_bi150 = [
        531842.7,
        548193.4,
        601447.9,
        487215.6,
        565982.1,
        592331.8,
        472884.3,
        441092.5,
        468775.4,
        603118.6
    ]

    est_time_bi150 = [
        574920.8,
        589771.2,
        636508.5,
        521846.9,
        603204.7,
        629155.4,
        505992.8,
        472630.7,
        501388.2,
        639447.3
    ]
    x = np.arange(len(labels))

    # 2. 计算相关系数 R^2 (用于证明模型有效性)
    r2 = r2_score(avg_time, est_time)

    # 3. 开始绘图
    plt.figure(figsize=(10, 6), dpi=100)

    # 绘制实测值
    plt.plot(x, avg_time_bi150, marker='o', linestyle='--', color='#1f77b4', label='Measured (Avg Time)', linewidth=2)
    # 绘制预测值
    plt.plot(x, est_time_bi150, marker='s', linestyle='-', color='#d62728', label='Predicted (Est Time)', linewidth=2)

    # 4. 图表美化
    plt.title(f'Comparison of Measured and Predicted Execution Time\n)',
              fontsize=14)
    plt.xlabel('Execution Configuration (Blocks, Threads)', fontsize=12)
    plt.ylabel('Execution Time (ns)', fontsize=12)
    plt.xticks(x, labels, rotation=45)
    plt.grid(True, linestyle=':', alpha=0.6)
    plt.legend(loc='upper left')

    # 自动调整布局防止标签重叠
    plt.tight_layout()

    # 5. 保存并展示
    # plt.savefig('model_validation.png')
    plt.show()

draw_exp()