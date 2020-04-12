j = rgb2gray(imread('cat.jpg'));  %读取图片并改为灰度
i = double(j);                 

y1 = 255*(i/255).^3.2;   %幂次变换
y2 = 255*(i/255).^0.4;
y1 = uint8(y1);
y2 = uint8(y2);

y3 = log(1+i)/0.065;   %log变换
y4 = log(1+i)/0.035;
y3(find(y3>255)) = 255;
y4(find(y4>255)) = 255;
y3 = uint8(y3);
y4 = uint8(y4);

y5 = 255-i;        %反向变换
y5 = uint8(y5);

y6 = imadjust(j,[ ],[50/255;150/255]);   %分段线性变换-对比度拉伸
y7 = imadjust(y6,[50/255;150/255 ],[20/255;230/255]);

%显示时输入代码  imshow（）