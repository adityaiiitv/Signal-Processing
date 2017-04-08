% code for sampling
clear all;
close all;

pkg load signal;
load end_term_y.mat;

x = zeros(256,1);
x(idx) = y;
X = dct(x);
%plot(X);
dd = idct(x);
%plot(dd);

A = rand(256,256);

%y = A\x;
%plot(y)
