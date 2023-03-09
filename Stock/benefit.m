%根据stock_state计算股票收益stock_benefit
stock_benefit=[]
value=[[]]
%对一百只股票初始资金进行赋值
for i=1:100
    stock_benefit(i)=100000
end
for i=1:100
    for j=1:685
        value(j,i)=stock_benefit(i)
        if j>1
            k3=stock_state(j-1,i);%k1=前一天股票状态
            k4=stock_state(j,i);%k2=当前股票状态
            if k3==0
                if k4==1
                    stock_amount=floor(stock_benefit(i)/x(j,i))
                    stock_benefit(i) = stock_benefit(i) - x(j,i)*stock_amount
                else
                    continue
                end
            else
                if k4==0
                    stock_benefit(i) = stock_benefit(i) + x(j,i)*stock_amount
                else
                    continue
                end
            end
        end
    end
end
save StockBenefit stock_benefit