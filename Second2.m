x = double(rgb2gray(imread('cat.jpg')));
[h w] = size(x);
subplot(3,3,1);
imshow(x,[]);
title('ԭʼͼ��');
for k=1:8
 for i=1:h
     for j=1:w
      tmp(i,j) = bitget(x(i,j),k);%bitget�������Ƚ�X(i,j)���Ҷ�ֵ�ֽ�Ϊ�����ƴ���Ȼ��ȡ��kλ
     end
 end
 subplot(3,3,k+1);
 imshow(tmp,[]);
 ind = num2str(k);
 imti = ['��',ind,'��λƽ��'];
 title(imti);
end