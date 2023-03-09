%% 读取并绘制收盘价走势
close all
load("StockData.mat")
CloseData = StockData.close;
figure;
hold on
plot(CloseData.time,CloseData{:,1},'LineWidth',2);
plot(CloseData.time,CloseData{:,2},'LineWidth',2);
legend(["平安银行","万科"],'Location','Best')
hold off
title('{\bf 收盘价}')
%% 计算并绘制收益率
Return = tick2ret(CloseData{:,"x000038_XSHE"});
figure;
plot(CloseData.time(2:end),Return,'LineWidth',2);
legend("平安银行",'Location','Best')
title('{\bf 收益率}')
%% 计算年化夏普率
AnnualSharpeRatio=sqrt(252)*mean(Return)/(std(Return)+eps);