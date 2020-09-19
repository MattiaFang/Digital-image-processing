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
[Gx,Gy]=gradient(I);       % �����ݶ�
G=sqrt(Gx.*Gx+Gy.*Gy);   % ע���Ǿ�����
J1=G;                  % ��һ��ͼ����ǿ
J2=I;                   % �ڶ���ͼ����ǿ
K=find(G>=10);
J2(K)=G(K);
J3=I;                   % ������ͼ����ǿ
K=find(G>=10);
J3(K)=255;
J4=I;                   % ������ͼ����ǿ
K=find(G<=10);
J4(K)=255;
J5=I;                   % ������ͼ����ǿ
K=find(G>=10);
J5(K)=0;
Q=find(G<10);
J5(Q)=255;
figure,                 %��ʾͼ��
subplot(2,3,1),imshow(I,map);
title('ԭͼ��');
subplot(2,3,2),imshow(J1,map);
title('��һ��');
subplot(2,3,3),imshow(J2,map);
title('�ڶ���');
subplot(2,3,4),imshow(J3,map);
title('������');
subplot(2,3,5),imshow(J4,map);
title('������');
subplot(2,3,6),imshow(J5,map);
title('������');

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
noise1 = imnoise(I,'gaussian',0,V);  %�Ӹ�˹����
subplot(2,2,1),
imshow(noise1);
title('�Ӹ�˹����')
noise = 0.1*randn(size(I));         %���������
noise2 = imadd(I,im2uint8(noise));
subplot(2,2,2),
imshow(noise2);
title('���������')
noise3 = imnoise(I,'salt & pepper',0.02);
subplot(2,2,3),
imshow(noise3);
title('�ӽ�������')
noise4 = imnoise(I,'speckle',0.06);
subplot(2,2,4),
imshow(noise4);
title('�ӳ�������')

% --------------------------------------------------------------------
function forth_2_Callback(hObject, eventdata, handles)
% hObject    handle to forth_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = imread('Go.jpg');
x_result = gauss(x,160);
subplot(1,2,1);imshow(x);title('ԭͼ');
subplot(1,2,2);imshow(x_result);title('��˹��ͨ�˲������ͼƬ');



%�ж϶����ͼƬ�Ƿ�Ϊ�Ҷ�ͼ�����������ת��Ϊ�Ҷ�ͼ���������������
function [image_result] =gauss (image_orign,D0)
%GULS ��˹��ͨ�˲���
%   D0Ϊ����Ƶ�ʵģ��൱�������ڸ���Ҷ��ͼ�İ뾶ֵ��
if (ndims(image_orign) == 3)
    image_2zhi = rgb2gray(image_orign);
else 
    image_2zhi = image_orign;
end
image_fft = fft2(image_2zhi);%�ø���Ҷ�任��ͼ��ӿռ���ת��ΪƵ����
image_fftshift = fftshift(image_fft);
%����Ƶ�ʳɷ֣�����ԭ�㣩�任������ҶƵ��ͼ����
[width,high] = size(image_2zhi);
D = zeros(width,high);
%����һ��width�У�high�����飬���ڱ�������ص㵽����Ҷ�任���ĵľ���
for i=1:width
    for j=1:high
        D(i,j) = sqrt((i-width/2)^2+(j-high/2)^2);
%���ص㣨i,j��������Ҷ�任���ĵľ���
        H = exp(-1/2*(D(i,j).^2)/(D0*D0));
%��˹��ͨ�˲�����
        image_fftshift(i,j)= H*image_fftshift(i,j);
%���˲������������ص㱣�浽��Ӧ����
    end
end
image_result = ifftshift(image_fftshift);%��ԭ�㷴�任��ԭʼλ��
image_result = uint8(real(ifft2(image_result)));
%real��������ȡ������ʵ����
%uint8�������ڽ����ص���ֵת��Ϊ�޷���8λ������ifft����������Ҷ�任



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
title('�ӽ����������ͼ��')
subplot(1,2,2),
imshow(J2);
title('��ֵ�˲����ͼ��')

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
title('ԭʼ�Ҷ�ͼ��');
subplot(2,2,2),
imshow(J);
title('ֱ��ͼ���⻯��ĻҶ�ͼ��');
subplot(2,2,3),
imhist(gray);
title('ԭʼ�Ҷ�ͼ��ֱ��ͼ');
subplot(2,2,4),
imhist(J);
title('ֱ��ͼ���⻯��ĻҶ�ͼ��ֱ��ͼ');

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
title('ԭʼ�Ҷ�ͼ��');
subplot(2,2,3);
imhist(Q);
title('ԭʼ�Ҷ�ͼ���ֱ��ͼ');
M = histeq(Q,counts);
subplot(2,2,2),
imshow(M);
title('ֱ��ͼ�涨����ĻҶ�ͼ��');
subplot(2,2,4),
imhist(M);
title('ֱ��ͼ�涨����ĻҶ�ͼ��ֱ��ͼ');
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
title('ԭʼͼ��');
subplot(1,2,2),
imshow(bw);
title('��ֵ�����ͼ��')

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
title('ԭʼ�Ҷ�ͼ��');
subplot(2,2,2),
imshow(J);
title('�����ԱȶȺ�ĻҶ�ͼ��');
subplot(2,2,3),
imhist(gray);
title('ԭʼ�Ҷ�ͼ��ֱ��ͼ');
subplot(2,2,4),
imhist(J);
title('�����ԱȶȺ��ֱ��ͼ');

% --------------------------------------------------------------------
function second_1_Callback(hObject, eventdata, handles)
% hObject    handle to second_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I = imread('Go.jpg');               %��ȡԭͼ
subplot(2,2,1),
imshow(I);
title('ԭʼͼ��')
X1= imresize(I,0.1,'nearest');      %�����ֵ��
subplot(2,2,2),
imshow(X1,[]);
title('�����ֵ��ʵ��ͼ������')
X2= imresize(I,0.1,'bilinear');     %˫���Բ�ֵ��
subplot(2,2,3),
imshow(X2,[]);
title('˫���Բ�ֵ��ʵ��ͼ������')
X3= imresize(I,0.1,'bicubic');      %˫������ֵ��
subplot(2,2,4),
imshow(X3,[]);
title('˫������ֵ��ʵ��ͼ������')

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
%subplot(1,1,1),imshow(I);title('��ѡ��Ҫ�ü������򣬲�˫��Ҫѡ����������ʾ');
msgbox('��ѡ��Ҫ�ü������򣬲�˫��ѡ������������ʾ','��ʾ��Ϣ');
waitforbuttonpress;
clf;
I2=imcrop(I);
close
subplot(1,2,1),
imshow(I)
title('��ʾԭͼ��');
subplot(1,2,2),
imshow(I2);
title('�ü����ͼ��');

% --------------------------------------------------------------------
function first_1_Callback(hObject, eventdata, handles)
% hObject    handle to first_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
[filename,pathname]=uigetfile({'*.*';'*.bmp';'*.jpg';'*.tif';'*.jpg'},'ѡ��ͼ��');
image=[pathname,filename];%�ϳ�·��+�ļ���
I=imread(image);%��ȡͼ��
subplot(1,1,1);
imshow(I);
title('ԭʼͼ��');
imwrite(I,'Go.jpg');


% --------------------------------------------------------------------
function first_2_Callback(hObject, eventdata, handles)
% hObject    handle to first_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
I = imread('Go.jpg');
gray=rgb2gray(I);          %���ɻҶ�ͼ��
imwrite(gray,'gray.bmp');
bw=im2bw(I,0.5);           %���ɶ�ֵͼ��
imwrite(bw,'bw.bmp');
msgbox('�ѱ���Ҷ�ͼ��gray.bmp�Ͷ�ֵͼ��bw.bmp','��ʾ��Ϣ');

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

