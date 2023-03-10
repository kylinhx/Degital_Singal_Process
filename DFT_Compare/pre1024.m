Xk1=x_fft_1024;    %计算xn的1024点DFT
%以下为绘图部分
k=0:1023;wk=2*k/1024;      
subplot(3,2,1);stem(wk,abs(Xk1),'.'); 
title('(fft)1024点DFT的幅频特性图');xlabel('ω/π');ylabel('幅度');
subplot(3,2,2);stem(wk,angle(Xk1),'.'); 
line([0,2],[0,0]);title('(fft)1024点DFT的相频特性图')
xlabel('ω/π');ylabel('相位');axis([0,2,-3.5,3.5]);
hold;

Xk2=x_DFT_1024;
k=0:1023;wk=2*k/1024;      
subplot(3,2,3);stem(wk,abs(Xk2),'.'); 
title('(DFT)1024点DFT的幅频特性图');xlabel('ω/π');ylabel('幅度');
subplot(3,2,4);stem(wk,angle(Xk1),'.'); 
line([0,2],[0,0]);title('(DFT)1024点DFT的相频特性图')
xlabel('ω/π');ylabel('相位');axis([0,2,-3.5,3.5]);
hold;

Xk3=X2_fft_1024;
k=0:1023;wk=2*k/1024;      
subplot(3,2,5);stem(wk,abs(Xk3),'.'); 
title('(2-fft)1024点DFT的幅频特性图');xlabel('ω/π');ylabel('幅度');
subplot(3,2,6);stem(wk,angle(Xk1),'.'); 
line([0,2],[0,0]);title('(2-fft)1024点DFT的相频特性图')
xlabel('ω/π');ylabel('相位');axis([0,2,-3.5,3.5]);
hold;