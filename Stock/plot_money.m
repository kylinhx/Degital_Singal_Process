%画图
money=[]
for i =1:685
    money(i)=0
    for j =1:100
        money(i)=money(i)+value(i,j)
    end
end
save money money
figure;
hold on
plot(money,'LineWidth',2)
legend(["总资金曲线"],'Location','Best')
hold off