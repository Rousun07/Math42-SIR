%Dr. Neverheardofher
beta = 0.0004;
gamma = 0.00002;
p = 0.9;
alpha = 0;

sir = @(t,y) [-beta.*y(1).*y(2);p*beta.*y(1).*y(2)-gamma.*y(2)+alpha.*y(3);
gamma.*y(2)-alpha.*y(3)+(1-p)*beta.*y(1).*y(2)];

[t,y] = ode45(sir,[0,350],[999 1 0]);
plot(t,y( :,1),"green",t,y( :,2),t,y( :,3),"LineStyle","-",'LineWidth',2);
xlabel("Days","FontSize",10);ylabel("Population","FontSize",10);
title("The spread of Doctor Neverheardofher's lie");
legend('S','I','R');
