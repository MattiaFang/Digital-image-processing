x = double(rgb2gray(imread('cat.jpg')));
[h w] = size(x);
subplot(3,3,1);
imshow(x,[]);
title('原始图像');
for k=1:8
 for i=1:h
     for j=1:w
      tmp(i,j) = bitget(x(i,j),k);%bitget函数首先将X(i,j)处灰度值分解为二进制串，然后取第k位
     end
 end
 subplot(3,3,k+1);
 imshow(tmp,[]);
 ind = num2str(k);
 imti = ['第',ind,'个位平面'];
 title(imti);
end