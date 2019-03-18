x=[0:0.1:1];
y=[-0.447,1.978,3.28,6.16,7.08,7.34,7.66,9.56,9.48,9.3,11.2];
p=polyfit(x,y,7);
figure;
y1=polyval(p,x);
plot(x,y,'ro','MarkerFaceColor','r');
title('数据拟合');
xlabel('Step');
ylabel('Value');
hold on;
plot(x,y1,'b-','LineWidth',3);
hold off;