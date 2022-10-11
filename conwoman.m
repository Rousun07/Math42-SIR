%the Conwoman
beta = 0.005
gamma = 0.002
p = 0.75
alpha = 0.008

sir = @(t,y) [-beta.*y(1).*y(2);p*beta.*y(1).*y(2)-gamma.*y(2)+alpha.*y(3);
gamma.*y(2)-alpha.*y(3)+(1-p)*beta.*y(1).*y(2)];

[t,y] = ode45(sir,[0,30],[999 1 0]);
plot(t,y( :,1),"red",t,y( :,2),"blue",t,y( :,3),"green","LineStyle","-",'LineWidth',2);
xlabel("Days","FontSize",10);ylabel("Population","FontSize",10);
title("The spread of Conwomen's lie");
legend('S','I','R');
