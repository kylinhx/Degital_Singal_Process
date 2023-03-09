% 根据LLT值判断是否持有股票，用stock_state表示，0为不持有，1为持有
stock_state=[[]]
for i = 1:100
    for j=1:685
        if j>1
            k1=LLT(j-1,i);
            k2=LLT(j,i);
            if k2>k1
                stock_state(j+1,i)=1
            else
                stock_state(j+1,i)=0
            end
        end
    end
end
save StockState stock_state

