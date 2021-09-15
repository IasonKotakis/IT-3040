clc;clear all;close all; 
% Question 1
% Implement a KNN classiffier
[~,data]=xlsread('dataset.xlsx');
data=data(2:end,2:end);
Outlook=data(:,1);
Temperature=data(:,2);
Humidity=data(:,3);
wind=data(:,4);
PlayTennis=data(:,5);
k=3;
X=[1:14]';
disp('---------------------------For Outlook---------------------------')
mdl = fitcknn(X,Outlook,'NumNeighbors',k,'Standardize',1)
% Predict the classifications for Outlook with minimum, mean, and maximum characteristics
Xnew = [min(X);mean(X);max(X)];
[label,score,cost] = predict(mdl,Xnew)
disp('---------------------------For Temperature---------------------------')
mdl = fitcknn(X,Temperature,'NumNeighbors',k,'Standardize',1)
% Predict the classifications for Temperature with minimum, mean, and maximum characteristics
Xnew = [min(X);mean(X);max(X)];
[label,score,cost] = predict(mdl,Xnew)
disp('---------------------------For Humidity---------------------------')
mdl = fitcknn(X,Humidity,'NumNeighbors',k,'Standardize',1)
% Predict the classifications for Humidity with minimum, mean, and maximum characteristics
Xnew = [min(X);mean(X);max(X)];
[label,score,cost] = predict(mdl,Xnew)
disp('---------------------------For Wind---------------------------')
mdl = fitcknn(X,wind,'NumNeighbors',k,'Standardize',1)
% Predict the classifications for Wind with minimum, mean, and maximum characteristics
Xnew = [min(X);mean(X);max(X)];
[label,score,cost] = predict(mdl,Xnew)
