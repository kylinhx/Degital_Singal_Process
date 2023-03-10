Xk11=x_fft_4096;    %计算xn的1024点DFT
%以下为绘图部分
k=0:4095;wk=2*k/4096;      
subplot(3,2,1);stem(wk,abs(Xk11),'.'); 
title('(fft)4096点DFT的幅频特性图');xlabel('ω/π');ylabel('幅度');
subplot(3,2,2);stem(wk,angle(Xk11),'.'); 
line([0,2],[0,0]);title('(fft)4096点DFT的相频特性图')
xlabel('ω/π');ylabel('相位');axis([0,2,-3.5,3.5]);
hold;

Xk22=x_DFT_4096;
k=0:4095;wk=2*k/4096;      
subplot(3,2,3);stem(wk,abs(Xk22),'.'); 
title('(DFT)4096点DFT的幅频特性图');xlabel('ω/π');ylabel('幅度');
subplot(3,2,4);stem(wk,angle(Xk22),'.'); 
line([0,2],[0,0]);title('(DFT)4096点DFT的相频特性图')
xlabel('ω/π');ylabel('相位');axis([0,2,-3.5,3.5]);
hold;

Xk33=X2_fft_4096;
k=0:4095;wk=2*k/4096;      
subplot(3,2,5);stem(wk,abs(Xk33),'.'); 
title('(2-fft)4096点DFT的幅频特性图');xlabel('ω/π');ylabel('幅度');
subplot(3,2,6);stem(wk,angle(Xk33),'.'); 
line([0,2],[0,0]);title('(2-fft)4096点DFT的相频特性图')
xlabel('ω/π');ylabel('相位');axis([0,2,-3.5,3.5]);
hold;