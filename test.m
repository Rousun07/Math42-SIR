%test
beta = 0.002;
gamma = 0.02;
p = 0.8;
alpha = 0.009;

sir = @(t,y) [-beta.*y(1).*y(2);p*beta.*y(1).*y(2)-gamma.*y(2)+alpha.*y(3);
gamma.*y(2)-alpha.*y(3)+(1-p)*beta.*y(1).*y(2)];

[t,y] = ode45(sir,[0,30],[1000 1 0]);
plot(t,y( :,1),t,y( :,2),t,y( :,3),"LineStyle","-",'LineWidth',2);
xlabel("Days","FontSize",10);ylabel("Population","FontSize",10);
title("The spread of tester's lie");
legend('S','I','R');
