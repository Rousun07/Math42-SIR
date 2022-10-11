%R.g.
beta = 0.04;
gamma = 0.15;
p = 0.25;
alpha = 0.001;


sir = @(t,y) [-beta.*y(1).*y(2);p*beta.*y(1).*y(2)-gamma.*y(2)+alpha.*y(3);
gamma.*y(2)-alpha.*y(3)+(1-p)*beta.*y(1).*y(2)];

[t,y] = ode45(sir,[0,7],[1000 1 0]);
plot(t,y( :,1),t,y( :,2),t,y( :,3),"LineStyle","-",'LineWidth',2);
xlabel("Days","FontSize",10);ylabel("Population","FontSize",10);
title("The spread of Regina George's lie");
legend('S','I','R');

