%双频拨号信号的生成和检测程序
%clear all;clc;
tm=[1,2,3,65;4,5,6,66;7,8,9,67;42,0,35,68] 
N=205;K=[18,20,22,24,31,34,38,42];
f1=[697,770,852,941];
f2=[1209,1336,1477,1633];
TN=input('键入8位电话号码：');
TNt=0;
count=1;
for m=1:8;
	d=fix(TN/10^(8-m));
	TN=TN-d*10^(8-m);
	for p=1:4;
		for q=1:4;
			if tm(p,q)==abs(d);break,end
		end
		if tm(p,q)==abs(d);break,end
		end
	n=0:1023;
	x = sin(2*pi*n*f1(p)/8000) + sin(2*pi*n*f2(q)/8000);
	sound(x,8000);
	pause(0.1)
%接收检测端的程序
	X=goertzel(x(1:N),K+1);
	val=abs(X);
	subplot(3,4,m);
	stem(K,val,'.');grid;
	xlabel(count);ylabel('|X(k)|');
    count=count+1;
	axis([10 50 0 120])
	limit=80;
	for s=5:8;
		if val(s)>limit,break,end
	end
	for r=1:4;
		if val(r)>limit,break,end
	end
	TNt=TNt+tm(r,s-4)*10^(8-m)
	end
disp('接收端检测到的信号是：');
disp(TNt)