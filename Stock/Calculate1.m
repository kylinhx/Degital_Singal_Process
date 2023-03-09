% Calculate Index
index=[[]]
stockData=CloseData{:,1:100}
stock_inout=[[]]
for i=1:100
    for j=1:685
        if j>1
            k1=stock_state(j-1,i)
            k2=stock_state(j,i)
            if k1 ~= k2
                index(j-1,i)=j-1
                index(j,i)=j
            else
                index(j,i)=0
            end
        end
    end
end
save Index index