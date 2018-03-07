clear all

mu = 2.0;
sigma = 0.5;

R = normrnd(mu, sigma, [1 100]);
N = normpdf(R,mu,sigma);
M = mean(N)
S = std(N)

plot(N)