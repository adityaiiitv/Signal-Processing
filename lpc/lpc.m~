mat=csvread("distmat.csv");
[m,n]=size(mat);
for i=1:m
	temp=sort(mat(i,:));
	for j=1:n
		if(mat(i,j)>temp(7))
			mat(i,j)=0;
		endif
	endfor
endfor
imshow(mat);
csvwrite("new.csv",mat);
