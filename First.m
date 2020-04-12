x = imread('cat.jpg');%读取图片%
%imshow(x);%
A=imresize(x,2);      %改变图片大小%
%imshow(A);%
angle=180;
B=imrotate(A,angle);  %旋转图片%
%imshow(B);%
C=imcrop(A,[120 100 120 100]);
imshow(C);            %裁剪图片%