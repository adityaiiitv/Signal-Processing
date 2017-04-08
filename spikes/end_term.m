clear all;
close all;
pkg load signal;
load end_term_y.mat;
load end_term_xX.mat;

n=256;
xz=zeros(n,1);
xz(idx)=y;
% DCT
xz=dct(xz);
for i=1:n
  mat(:,i)=sin(i*idx)'+cos(i*idx)';
end

b=mat*xz;
sig=0.005;
% PUT SOME ERROR BOUND FOR RECONSTRUCTION
bn=mat*xz + sig*randn(60,1);
[x1,st]=l1_ls(mat,mat',60,256,bn,0.01,0.01);
figure(1)
plot(abs(x1-xz),'g')
title('ERROR BETWEEN SOLUTION FROM l1 AND ORIGINAL SOLUTION')
figure(2)
stem(idct(x1),'r')
hold
title('SOLUTION USING l1 MINIMIZATION')
printf('NORMALIZED ERROR OF RECONSTRUCTED SIGNAL FROM ORIGINAL SIGNAL:%d\n',norm(dct(x1)-xz)/256)
