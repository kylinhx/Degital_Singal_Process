t1=clock
for index = 0:100
    X2_fft_1024=DIT_FFT_2_MOD(xn1024,1024)';    %编写的算法计算1024点FFT
end
t2=clock;
time2_fft_1024(end+1)=etime(t2,t1)

t1=clock
for index = 0:1
    x_DFT_1024 = MDFT(xn1024,1024);    %编写的算法计算1024点FFT
end
t2=clock
time_DFT_1024(end+1)=etime(t2,t1)

t1=clock
for index = 0:1000
    x_fft_1024=fft(xn1024,1024);     %编写的算法计算1024点FFT
end
t2=clock
time_fft(end+1)=etime(t2,t1)


