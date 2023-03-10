xn1024=X1;
xn4096=X2;
X2_fft_1024=DIT_FFT_2_MOD(xn1024,1024)';    %编写的算法计算1024点FFT
X2_fft_4096=DIT_FFT_2_MOD(xn4096,4096)';    %编写的算法计算4096点FFT

x_fft_1024=fft(xn1024,1024);        %matlab自带的fft计算1024点FFT
x_fft_4096=fft(xn4096,4096);        %matlab自带的fft计算4096点FFT


x_DFT_1024 = MDFT(xn1024,1024);     %直接计算1024点DFT
x_DFT_4096 = MDFT(xn4096,4096);     %直接计算4096点DFT

