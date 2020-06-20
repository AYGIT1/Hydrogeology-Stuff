% Simple exponential curve fitting of Ýbrahim & Brutsaert (1961) chart.
% Can be used to approximate Gamma value from calculated Tau value.
% May or may not represent the original analytical solution.
% Author: Aykut Aladað 24.04.2020

clear all
clc

% Data from chart:
x_Tau = [0.25, 0.5, 1, 1.5, 2, 2.25, 2.5, 3, 3.5, 4];
y_Gamma = [0.8, 0.48, 0.24, 0.14, 0.098, 0.08, 0.067, 0.049, 0.036, 0.028];

f = fit(x_Tau(:),y_Gamma(:),'exp2')

% x = 0:0.1:7;
% g = exp(-3.257*x) + 0.3837*exp(-0.6902*x);

plot(f,x_Tau,y_Gamma)
% hold
% plot(x,g)
% hold
grid on

% fitted curve func. may be simplified and approximated as:
% g = 26.^(-x) + 0.4*2.^(-x);