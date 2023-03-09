%对数据进行滤波得到685*100的矩阵
B = [0.049375 0.00125 -0.048125];
A = [1 -1.9 0.9025];
fs = 1000;  % 重采样频率
T = 1/fs;  % 周期
n = 5;  % 1Hz频率被分成n段
N = fs*n;  % 因为1Hz频率被分成了n段，所以频谱的x轴数组有fs*n个数
f = (0: N-1)*fs/N;  % 将fs个频率细分成fs*n个（即原来是[0, 1, 2, …, fs]，现在是[0, 1/N, 2/N, …, (N-1)*fs/N]）
t = (0: N-1)*T;  % 信号所持续的时长（N个周期）
nHz = 10;  % 画的频谱的横坐标到nHz
Hz = nHz*n;  % 画的频谱的横坐标的数组个数

load("StockData.mat")
CloseData = StockData.close;

x=CloseData{:,1:100}
%x1即为滤波后的TTL，为685*100的矩阵
LLT = filter(B,A,x);
%保存LLT值
save LLT LLT