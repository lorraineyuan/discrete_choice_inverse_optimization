clear;

data = readmatrix('sample_disc_0.45_0.55.csv');

k_obs1 = data(:,2);
l_obs1 = data(:,3);
w_obs1 = data(:,4);
% k_obs = k_obs1(k_obs1>0&l_obs1>0); 
% l_obs = l_obs1(k_obs1>0&l_obs1>0); 
% w_obs = w_obs1(k_obs1>0&l_obs1>0); 

k_obs = data(:,2);
l_obs = data(:,3);
w_obs = data(:,4);
k_obs(k_obs == 0) = 0.0001; 
l_obs(l_obs == 0) = 0.0001; 

n = length(k_obs);

%Parameter
c = 2;
p1 = 2.5;
p2 = 3.5;
% a = 0.3;
% b = 0.45;

p_mat = repmat([p1 p2],n,1);
kl_mat = [k_obs l_obs]';
lhs = diag(p_mat*kl_mat);
A = [p1 p2];

fa = @(a) a ./ k_obs;
fb = @(b) b ./ l_obs;
fab = @(a,b) [fa(a)'; fb(b)'];

w_mat = diag(w_obs);

cvx_begin
    variables aa bb y(n,1) epsi(n,1)
    minimize( norm(epsi) )
    subject to
        1 >= aa >= 0;
        1 >= bb >= 0;
        aa + bb == 1;
        y >= 0;
        A(1) * y <= fa(aa);
        A(2) * y <= fb(bb);
        diag(fab(aa,bb)'*kl_mat) - (w_mat)*y <= epsi;
cvx_end

aa
bb


