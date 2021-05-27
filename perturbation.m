% ORIE 6751 Final Project 
% Inverse Discrete Opt using Perturbation Method 
clear all; 
close all; 

%% Importing the data set 
% ------- Data Cleaning--------- 
[ndata, text, raw] = xlsread('sample_disc_0.35_0.65_w=70.csv'); 
raw = raw(2:end,:);
data = reshape([raw{:}],size(raw));
DB = table; % Database matrix

     DB.K = ndata(:,2);
     DB.L = ndata(:,3);    
     DB.w = ndata(:,4);    

clearvars ndata raw;
     K  = DB.K;
     L  = DB.L;
     w  = DB.w; 

% Logarithm on (K, L) -> transform U=a*logK+b*logL 
K = log(K);
L = log(L);
P = [K L w]; % parameter matrix 
P = P(~any(isinf(P), 2), :);
[N, d]= size(P);
K = P(:,1);
L = P(:,2);
w = P(:,3);


%% Perturbed Maximizer via Monte Carlo Method 
mu1 = 0;
sigma1 = 0.5;
mu2 = 0;
sigma2 = 0.5;
M = 10000;
Z1 = evrnd(mu1,sigma1,M,1);
Z2 = evrnd(mu2,sigma2,M,1);
A = zeros(N,M);
B = zeros(N,M); 

for i = 1:N
    for j = 1:M
        if Z1(j) + K(i) >= Z2(j) + L(i)
           A(i,j) = 1;
           B(i,j) = 0;
        else 
           A(i,j) = 0;
           B(i,j) = 1;
        end           
    end 
end 

hata = mean(A,2); % approx partial U w.r.t. log(K) 
hatb = mean(B,2); % approx partial U w.r.t. log(L) 
a = mean(hata);   % interpretation to be checked
b = mean(hatb);





