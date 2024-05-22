function varargout = gui_mec(varargin)
% GUI_MEC MATLAB code for gui_mec.fig
%      GUI_MEC, by itself, creates a new GUI_MEC or raises the existing
%      singleton*.
%
%      H = GUI_MEC returns the handle to a new GUI_MEC or the handle to
%      the existing singleton*.
%
%      GUI_MEC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_MEC.M with the given input arguments.
%
%      GUI_MEC('Property','Value',...) creates a new GUI_MEC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_mec_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_mec_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_mec

% Last Modified by GUIDE v2.5 15-May-2024 00:38:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_mec_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_mec_OutputFcn, ...
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


% --- Executes just before gui_mec is made visible.
function gui_mec_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_mec (see VARARGIN)

% Choose default command line output for gui_mec
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_mec wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_mec_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in menu1.
function menu1_Callback(hObject, eventdata, handles)
% hObject    handle to menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu1


% --- Executes during object creation, after setting all properties.
function menu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
x1=get(handles.pushbutton1,'value');
val=get(handles.menu1,'value');
res=sim("Project_Matlab&Control\Mechanical_System.slx")
if x1==1;
    switch val
    case 1
        a=imread('Project_Matlab&Control\1.png');
        
        axes(handles.axes1);
        imshow(a);
        axes(handles.axes2);
        plot(res.system);
    case 2
        a=imread('Project_Matlab&Control\2.png');
       
        axes(handles.axes1);
        imshow(a);
        axes(handles.axes2);
        plot(res.tf);
    case 3
        a=imread('Project_Matlab&Control\3.png');
        
        axes(handles.axes1);
        imshow(a);
        axes(handles.axes2);
        plot(res.block);
    case 4
        a=imread('Project_Matlab&Control\4.png');
       
        axes(handles.axes1);
        imshow(a);
        axes(handles.axes2);
        plot(res.all);
    end
end

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
open_system("Project_Matlab&Control\Mechanical_System.slx");
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
 axes(handles.axes1);
    cla;
    axes(handles.axes2);
    cla;
    clear;
    clc;
    
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
get(handles.pushbutton4,'value')==1
    close;
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
