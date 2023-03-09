%% ��ȡ���������̼�����
close all
load("StockData.mat")
CloseData = StockData.close;
figure;
hold on
plot(CloseData.time,CloseData{:,1},'LineWidth',2);
plot(CloseData.time,CloseData{:,2},'LineWidth',2);
legend(["ƽ������","���"],'Location','Best')
hold off
title('{\bf ���̼�}')
%% ���㲢����������
Return = tick2ret(CloseData{:,"x000038_XSHE"});
figure;
plot(CloseData.time(2:end),Return,'LineWidth',2);
legend("ƽ������",'Location','Best')
title('{\bf ������}')
%% �����껯������
AnnualSharpeRatio=sqrt(252)*mean(Return)/(std(Return)+eps);