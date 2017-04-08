clear all;
close all;
b=[1 1 0 0 0;1 1 1 0 0;0 1 1 1 0;0 0 1 1 1;0 0 0 1 1];
z=zeros(5,5);
a=[b eye(5) z z z;eye(5) b eye(5) z z; z eye(5) b eye(5) z; z z eye(5) b eye(5); z z z eye(5) b];
%
win=[1 0 0 0 1 0 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0];
n1=[0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 0];
n2=[1 0 1 0 1 1 0 1 0 1 0 0 0 0 0 1 0 1 0 1 1 0 1 0 1];
n3=[0 1 1 1 0 1 0 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1];
n4=[1 0 1 0 1 1 0 1 0 1 0 0 0 0 0 1 0 1 0 1 1 0 1];

flag1=win*n1';
flag2=win*n2';
flag3=0;
if(mod(flag1,2)==0 && mod(flag2,2)==0)
	flag3=1;
endif
if(flag3 == 1)
	% continue to find the matrix R, where RA=E
	e=[eye(23),n3',n4';0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
	i=1;
	while(i<=23)
	{	
		j=i;
		if(j!=1)
		{
			
		}
		while(j<=25)
		{
			j++;
		}
		j=0;
		while(j<=i)
		{
			j++;
		}
		i++;
	}
	%r=inv(a)*e';
	%f=r*win';	
	
endif
%
