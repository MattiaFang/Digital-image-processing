function varargout = WORK(varargin)
% WORK MATLAB code for WORK.fig
%      WORK, by itself, creates a new WORK or raises the existing
%      singleton*.
%
%      H = WORK returns the handle to a new WORK or the handle to
%      the existing singleton*.
%
%      WORK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WORK.M with the given input arguments.
%
%      WORK('Property','Value',...) creates a new WORK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WORK_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WORK_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help WORK

% Last Modified by GUIDE v2.5 09-Jul-2020 22:15:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WORK_OpeningFcn, ...
                   'gui_OutputFcn',  @WORK_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before WORK is made visible.
function WORK_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to WORK (see VARARGIN)

% Choose default command line output for WORK
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes WORK wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = WORK_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function first_Callback(hObject, eventdata, handles)
% hObject    handle to first (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function second_Callback(hObject, eventdata, handles)
% hObject    handle to second (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function thrid_Callback(hObject, eventdata, handles)
% hObject    handle to thrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function forth_Callback(hObject, eventdata, handles)
% hObject    handle to forth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function fifth_Callback(hObject, eventdata, handles)
% hObject    handle to fifth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function fifth_1_Callback(hObject, eventdata, handles)
% hObject    handle to fifth_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
[I,map]=imread('Go.jpg');
I=rgb2gray(I);
I=double(I);
[Gx,Gy]=gradient(I);       % 计算梯度
G=sqrt(Gx.*Gx+Gy.*Gy);   % 注意是矩阵点乘
J1=G;                  % 第一种图像增强
J2=I;                   % 第二种图像增强
K=find(G>=10);
J2(K)=G(K);
J3=I;                   % 第三种图像增强
K=find(G>=10);
J3(K)=255;
J4=I;                   % 第四种图像增强
K=find(G<=10);
J4(K)=255;
J5=I;                   % 第五种图像增强
K=find(G>=10);
J5(K)=0;
Q=find(G<10);
J5(Q)=255;
figure,                 %显示图形
subplot(2,3,1),imshow(I,map);
title('原图像');
subplot(2,3,2),imshow(J1,map);
title('第一种');
subplot(2,3,3),imshow(J2,map);
title('第二种');
subplot(2,3,4),imshow(J3,map);
title('第三种');
subplot(2,3,5),imshow(J4,map);
title('第四种');
subplot(2,3,6),imshow(J5,map);
title('第五种');

% --------------------------------------------------------------------
function fifth_2_Callback(hObject, eventdata, handles)
% hObject    handle to fifth_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function fifth_3_Callback(hObject, eventdata, handles)
% hObject    handle to fifth_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function forth_1_Callback(hObject, eventdata, handles)
% hObject    handle to forth_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I = imread('Go.jpg');
V = 0.02;
noise1 = imnoise(I,'gaussian',0,V);  %加高斯噪音
subplot(2,2,1),
imshow(noise1);
title('加高斯噪声')
noise = 0.1*randn(size(I));         %加随机噪音
noise2 = imadd(I,im2uint8(noise));
subplot(2,2,2),
imshow(noise2);
title('加随机噪声')
noise3 = imnoise(I,'salt & pepper',0.02);
subplot(2,2,3),
imshow(noise3);
title('加椒盐噪声')
noise4 = imnoise(I,'speckle',0.06);
subplot(2,2,4),
imshow(noise4);
title('加乘性噪声')

% --------------------------------------------------------------------
function forth_2_Callback(hObject, eventdata, handles)
% hObject    handle to forth_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = imread('Go.jpg');
x_result = gauss(x,160);
subplot(1,2,1);imshow(x);title('原图');
subplot(1,2,2);imshow(x_result);title('高斯低通滤波处理后图片');



%判断读入的图片是否为灰度图，如果不是则转换为灰度图，如果是则不做操作
function [image_result] =gauss (image_orign,D0)
%GULS 高斯低通滤波器
%   D0为截至频率的（相当于设置在傅里叶谱图的半径值）
if (ndims(image_orign) == 3)
    image_2zhi = rgb2gray(image_orign);
else 
    image_2zhi = image_orign;
end
image_fft = fft2(image_2zhi);%用傅里叶变换将图象从空间域转换为频率域
image_fftshift = fftshift(image_fft);
%将零频率成分（坐标原点）变换到傅里叶频谱图中心
[width,high] = size(image_2zhi);
D = zeros(width,high);
%创建一个width行，high列数组，用于保存各像素点到傅里叶变换中心的距离
for i=1:width
    for j=1:high
        D(i,j) = sqrt((i-width/2)^2+(j-high/2)^2);
%像素点（i,j）到傅里叶变换中心的距离
        H = exp(-1/2*(D(i,j).^2)/(D0*D0));
%高斯低通滤波函数
        image_fftshift(i,j)= H*image_fftshift(i,j);
%将滤波器处理后的像素点保存到对应矩阵
    end
end
image_result = ifftshift(image_fftshift);%将原点反变换回原始位置
image_result = uint8(real(ifft2(image_result)));
%real函数用于取复数的实部；
%uint8函数用于将像素点数值转换为无符号8位整数；ifft函数反傅里叶变换



% --------------------------------------------------------------------
function forth_3_Callback(hObject, eventdata, handles)
% hObject    handle to forth_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I = imread('Go.jpg');
J=rgb2gray(I);
I1 = imnoise(J,'salt & pepper',0.06);
I2 = double(I1)/255;
J2 = medfilt2(I2,[3 3]);
subplot(1,2,1),
imshow(I1);
title('加椒盐噪声后的图像')
subplot(1,2,2),
imshow(J2);
title('中值滤波后的图像')

% --------------------------------------------------------------------
function third_1_Callback(hObject, eventdata, handles)
% hObject    handle to third_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I = imread('Go.jpg');
gray = rgb2gray(I);
J = histeq(gray);
subplot(2,2,1),
imshow(gray);
title('原始灰度图像');
subplot(2,2,2),
imshow(J);
title('直方图均衡化后的灰度图像');
subplot(2,2,3),
imhist(gray);
title('原始灰度图像直方图');
subplot(2,2,4),
imhist(J);
title('直方图均衡化后的灰度图像直方图');

% --------------------------------------------------------------------
function third_2_Callback(hObject, eventdata, handles)
% hObject    handle to third_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I =imread('Go.jpg');
gray = rgb2gray(I);
J = histeq(gray,32);
[counts,x]=imhist(J);
I=imread('Go.jpg');
Q = rgb2gray(I);
subplot(2,2,1),
imshow(Q);
title('原始灰度图像');
subplot(2,2,3);
imhist(Q);
title('原始灰度图像的直方图');
M = histeq(Q,counts);
subplot(2,2,2),
imshow(M);
title('直方图规定化后的灰度图像');
subplot(2,2,4),
imhist(M);
title('直方图规定化后的灰度图像直方图');
axis square

% --------------------------------------------------------------------
function third_3_Callback(hObject, eventdata, handles)
% hObject    handle to third_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear 
I = imread('Go.jpg');
level = graythresh(I);
bw = im2bw(I,level);
subplot(1,2,1),
imshow(I);
title('原始图像');
subplot(1,2,2),
imshow(bw);
title('阀值化后的图像')

% --------------------------------------------------------------------
function third_4_Callback(hObject, eventdata, handles)
% hObject    handle to third_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I = imread('Go.jpg');
gray = rgb2gray(I);
J = imadjust(gray,[0.3,0.7],[]);
subplot(2,2,1),
imshow(gray);
title('原始灰度图像');
subplot(2,2,2),
imshow(J);
title('调整对比度后的灰度图像');
subplot(2,2,3),
imhist(gray);
title('原始灰度图像直方图');
subplot(2,2,4),
imhist(J);
title('调整对比度后的直方图');

% --------------------------------------------------------------------
function second_1_Callback(hObject, eventdata, handles)
% hObject    handle to second_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I = imread('Go.jpg');               %读取原图
subplot(2,2,1),
imshow(I);
title('原始图像')
X1= imresize(I,0.1,'nearest');      %领域插值法
subplot(2,2,2),
imshow(X1,[]);
title('邻域插值法实现图像缩放')
X2= imresize(I,0.1,'bilinear');     %双线性插值法
subplot(2,2,3),
imshow(X2,[]);
title('双线性插值法实现图像缩放')
X3= imresize(I,0.1,'bicubic');      %双立方插值法
subplot(2,2,4),
imshow(X3,[]);
title('双立方插值法实现图像缩放')

% --------------------------------------------------------------------
function second_2_Callback(hObject, eventdata, handles)
% hObject    handle to second_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
J = imread('GO.jpg');
open('NEXT.fig')

% --------------------------------------------------------------------
function second_3_Callback(hObject, eventdata, handles)
% hObject    handle to second_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear 
I = imread('GO.jpg');
%subplot(1,1,1),imshow(I);title('请选择要裁剪的区域，并双击要选定区域以显示');
msgbox('请选择要裁剪的区域，并双击选定的区域以显示','提示信息');
waitforbuttonpress;
clf;
I2=imcrop(I);
close
subplot(1,2,1),
imshow(I)
title('显示原图像');
subplot(1,2,2),
imshow(I2);
title('裁剪后的图像');

% --------------------------------------------------------------------
function first_1_Callback(hObject, eventdata, handles)
% hObject    handle to first_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
[filename,pathname]=uigetfile({'*.*';'*.bmp';'*.jpg';'*.tif';'*.jpg'},'选择图像');
image=[pathname,filename];%合成路径+文件名
I=imread(image);%读取图像
subplot(1,1,1);
imshow(I);
title('原始图像');
imwrite(I,'Go.jpg');


% --------------------------------------------------------------------
function first_2_Callback(hObject, eventdata, handles)
% hObject    handle to first_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I = imread('Go.jpg');
gray=rgb2gray(I);          %生成灰度图像
imwrite(gray,'gray.bmp');
bw=im2bw(I,0.5);           %生成二值图像
imwrite(bw,'bw.bmp');
msgbox('已保存灰度图像gray.bmp和二值图像bw.bmp','提示消息');

% --------------------------------------------------------------------
function first_3_Callback(hObject, eventdata, handles)
% hObject    handle to first_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

ha=axes('units','normalized','position',[0 0 1 1]);
uistack(ha,'down')
II=imread('background.jpg');
image(II)
colormap gray
set(ha,'handlevisibility','off','visible','off');

