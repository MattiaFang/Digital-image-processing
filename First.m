x = imread('cat.jpg');%��ȡͼƬ%
%imshow(x);%
A=imresize(x,2);      %�ı�ͼƬ��С%
%imshow(A);%
angle=180;
B=imrotate(A,angle);  %��תͼƬ%
%imshow(B);%
C=imcrop(A,[120 100 120 100]);
imshow(C);            %�ü�ͼƬ%