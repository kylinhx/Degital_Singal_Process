x=1:100
time2_fft_1024=[]
time_fft=[]
time_DFT_1024=[]
for index=1:100
    time_compare
end
subplot(3,1,1)
plot(x,time_DFT_1024,'red');
xlabel('次数');ylabel('DFT时间');
subplot(3,1,2)
plot(x,time_fft,'blue');
xlabel('次数');ylabel('fft时间');
subplot(3,1,3)
plot(x,time2_fft_1024,'green');
xlabel('次数');ylabel('2-fft时间');
