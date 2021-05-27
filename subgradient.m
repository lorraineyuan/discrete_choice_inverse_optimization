% ORIE 6751 Final Project 
% Inverse Discrete Opt using Subgradient Method 
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
    
ParaMatrix = [K L w]; % parameter matrix 
[N,M]= size(ParaMatrix);

%% Inverse Opt w Subgradient 
p = [2.5 3.5]';
In = ones(N,1);

L1 = L-1;
P = find(L1<=0);
L1(P) = 0.001; 
K1 = K-1;
Q1 = find(K1<=0);
K1(Q1) = 0.001;
K2 = K-2;
Q2 = find(K2<=0);
K2(Q2) = 0.001;
K(K==0) = 0.001;
L(L==0) = 0.001;

%% CVX Body
cvx_begin
    variables x1(N) x2(N) epsilon(N) y(N) a b;
    minimize(norm(epsilon))
    subject to 
      y >= 0;
      a+b==1;
      -p*y' <= [x1';x2']; 
      x1.*K + x2.*L + w.*y <= epsilon;
      -a*log(K+1) - b*log(L1) >= -a*log(K)-b*log(L) + [x1 x2]*[1;-1]; 
      -a*log(K2) - b*log(L+1) >= -a*log(K)-b*log(L) + [x1 x2]*[-2;1]; 
      % -a*log(K1) - b*log(L) >= -a*log(K)-b*log(L) + [x1 x2]*[-1;0];
     
cvx_end 

