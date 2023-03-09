%% close all
stock_number=input("请输入股票支数（0-100）：")
load("StockData.mat")
CloseData = StockData.close;
figure;
hold on
plot(CloseData.time,CloseData{:,stock_number},'LineWidth',2);
legend(["第"+stock_number+"支股票"],'Location','Best')
hold off
title('{\bf 收盘价}')

%%　读取stockstate
load("StockState.mat")
StateData = stock_state;
figure;
hold on
plot(StateData(:,1),'LineWidth',2);
ylim([0,2])
legend(["第"+stock_number+"支股票"],'Location','Best')
hold off
title('{\bf 股票持有情况}')

%%　读取money，绘制总资金曲线
load("money.mat")
Money=money;
figure;
hold on
plot(Money,'LineWidth',2)
legend(["总资金曲线"],'Location','Best')
hold off

%% 计算收益率以及年化夏普比率
stockData = CloseData{:,:}
load("index.mat")
tmp=[]
%% 输入股票支数计算收益率
c=1
for i=stock_number
    for j=1:685
        k=index(j,i)
        if k ~=0
            tmp(c)=stockData(k,i)
            c = c+1
        end
    end
end
Return = tick2ret(tmp(:))
figure;
plot(Return,'LineWidth',2);
legend("第"+stock_number+"支股票",'Location','Best')
title('{\bf 收益率}')
%% 计算年化夏普率
AnnualSharpeRatio=sqrt(252)*mean(Return)/(std(Return)+eps)