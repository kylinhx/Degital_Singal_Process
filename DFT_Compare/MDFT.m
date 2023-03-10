%这是matlab代码，若要使用此函数，请复制此代码保存为MDFT.m文件到你的工作路径
function [Xk]=MDFT(xn,N)
%此函数使用DFT矩阵方法计算序列x(n)的N点DFT
M=length(xn);%记录序列x(n)初始长度
    if M<N   %如果序列长度小于N，补零到N，否则，截取前N项 
        xn=[xn,zeros(1,N-M)];
    else
        xn=xn(:,1:N);  %截取（全部行）前N列 
    end
n=0:N-1; k=0:N-1;      %匹配矩阵维度n,k
W_N=exp(-1i*2*pi/N);   %生成N点DFT对应的旋转因子W(常数)
nk=n'*k;               %生成旋转因子W的幂次系数矩阵(N*N)
W=W_N.^nk;             %生成N点DFT矩阵(N*N),数幂运算
Xk=W*xn';              %[X(k)]=[W]*[x(n)]T,矩阵乘法
Xk=Xk';                %以行向量的方式输出[X(k)]
end

