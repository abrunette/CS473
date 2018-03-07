%%%%%%%%%%%%%%%%%%%% Problem 1 %%%%%%%%%%%%%%%%%%%%%%%

%PROB = 0.2

%x = rand(n,m) from 0 to 1, m times
%x = rand(1,1000)
%x = randn(1,1000) (mean 0, var 1)
% x(m,s) = m + s*randn(1,1000)
%sample variance = cumsum((x - samplemean).^2./[1:1:1000]);

%x_b = (x < PROB)

%sum(x_b)
%tmp = cumsum(x_b)

% x = { x(1) ... x(1000) }
% y = { y(1) ... y(1000) }
% ./  =>  x ./ y = [ x(1)/y(1) , x(2)/y(2) , ... ]

%SampleMean = cumsum(x_b) ./ [1:1:100];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all

PROB = 0.2; 

x = rand(1,1000);
x_b = (x < PROB);
SampleMean = cumsum(x_b) ./ [1:1:1000];
SampleVariance = cumsum((x - SampleMean).^2./[1:1:1000]);

plot(SampleMean)

%x(SampleMean,SampleVariance) = SampleMean + SampleVariance * rand(1,1000);





