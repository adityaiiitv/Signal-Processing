clear all;
close all;
b=[1 1 0 0 0;1 1 1 0 0;0 1 1 1 0;0 0 1 1 1;0 0 0 1 1];
i=eye(5);
z=zeros(5,5);
a=[b i z z z;i b i z z; z i b i z; z z i b i; z z z i b];
%
win=[1 0 0 0 1 0 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0];
n1=[0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0];
n2=[1 0 1 0 1 1 0 1 0 1 0 0 0 0 0 1 0 1 0 1 1 0 1 0 1];
flag1=win.n1';
%
