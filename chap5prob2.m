%samplemean_10 = [mean(1:10,1) mean(1:10,2)];
          %_50
          %_500

          
          %x = x - ones(1000,1) * samplemean
%samplecovariance = [x(1:10,:)]' * x(1:10,:)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all

sigma = [0.1 -0.1; -0.1 0.5]; %Corvar matrix
mu = [1.5 2];

r_10 = mvnrnd(mu,sigma,10);
r_50 = mvnrnd(mu,sigma,50);
r_500 = mvnrnd(mu,sigma,500);

M_10 = mean(r_10)
S_10 = std(r_10)
M_50 = mean(r_50)
S_50 = std(r_50)
M_500 = mean(r_500)
S_500 = std(r_500)