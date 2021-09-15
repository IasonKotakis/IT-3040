clc;clear all;close all; 
% Question 2
format short g
x = [56 60 65 73 78 84 89 95 98]';
y = [1773 1699 1660 1651 1642 1634 1628 1603 1583]';
X = [ones(length(x),1) x];
b = X\y;                        % The \ operator performs a least-squares regression.
y2 = X*b;
fprintf('y=%.2f+(%.2f)x\n',b(1),b(2))
[p,err] = polyfit(x,y,1);       % First order polynomial
y_fit = polyval(p,x,err);       % Values on a line
y_dif = y - y_fit;          	% y value difference (residuals)
SSdif = sum(y_dif.^2);          % Sum square of difference
SStot = (length(y)-1)*var(y);   % Sum square of y taken from variance
r = -sqrt(1-SSdif/SStot);       % since the correlation is negative, r is a negative number
fprintf('The correlation "r" of the data is %f\n',r)

figure;
scatter(x,y)
hold on
plot(x,y2,'--')
xlabel('Year');
ylabel('Time');
grid on
