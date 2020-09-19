function varargout = NEXT(varargin)
% NEXT MATLAB code for NEXT.fig
%      NEXT, by itself, creates a new NEXT or raises the existing
%      singleton*.
%
%      H = NEXT returns the handle to a new NEXT or the handle to
%      the existing singleton*.
%
%      NEXT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEXT.M with the given input arguments.
%
%      NEXT('Property','Value',...) creates a new NEXT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NEXT_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NEXT_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NEXT

% Last Modified by GUIDE v2.5 09-Jul-2020 22:15:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NEXT_OpeningFcn, ...
                   'gui_OutputFcn',  @NEXT_OutputFcn, ...
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


% --- Executes just before NEXT is made visible.
function NEXT_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NEXT (see VARARGIN)

% Choose default command line output for NEXT
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NEXT wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NEXT_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clearvars -except handles;
handles=guihandles;
guidata(handles.edit1,handles);
I = imread('GO.jpg');
imshow(I);
s = str2double(get(handles.edit1,'string'));
J = imrotate(I,-s,'bilinear');
subplot(1,1,1),
imshow(J);
title('Ðý×ªÍ¼Ïñ')


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clearvars -except handles;
handles=guihandles;
guidata(handles.edit1,handles);
I = imread('GO.jpg');
imshow(I);
s = str2double(get(handles.edit1,'string'));
J = imrotate(I,s,'bilinear');
imshow(J);
title('Ðý×ªÍ¼Ïñ')


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I = imread('GO.jpg');
imshow(I);
title('Ô­Í¼Ïñ')



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double



% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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