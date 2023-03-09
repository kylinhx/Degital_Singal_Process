B = [0.049375 0.00125 -0.048125];
A = [1 -1.9 0.9025];
figure
fs = 1000;  % 重采样频率
T = 1/fs;  % 周期
n = 5;  % 1Hz频率被分成n段
N = fs*n;  % 因为1Hz频率被分成了n段，所以频谱的x轴数组有fs*n个数
f = (0: N-1)*fs/N;  % 将fs个频率细分成fs*n个（即原来是[0, 1, 2, …, fs]，现在是[0, 1/N, 2/N, …, (N-1)*fs/N]）
t = (0: N-1)*T;  % 信号所持续的时长（N个周期）
nHz = 10;  % 画的频谱的横坐标到nHz
Hz = nHz*n;  % 画的频谱的横坐标的数组个数

x=CloseData{:,1:100}
subplot(211),plot(x,'k'),title('原始信号时域'),xlabel('time [s]');  % 绘制原始信号时域
fx = abs(fft(x-mean(x)))/(N/2);  % 傅里叶变换
subplot(212),plot(f(1:Hz), fx(1:Hz),'k'),title('原始信号频域'),xlabel('frequency [Hz]');  % 绘制原始信号频域

x1 = filter(B,A,x);
figure
subplot(211),plot(x1,'b'),title('滤波后的信号'),xlabel('time [s]');
fx1 = abs(fft(x1-mean(x1)))/(N/2);  % 傅里叶变换
subplot(212),plot(f(1:Hz), fx1(1:Hz),'k'),title('滤波信号频域'),xlabel('frequency [Hz]');
