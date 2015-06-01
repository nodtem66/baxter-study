% reference: http://www.thphys.nuim.ie/CompPhysics/matlab/help/techdoc/umg/chpatch4.html

function varargout = gui_robotic(varargin)
% GUI_ROBOTIC MATLAB code for gui_robotic.fig
%      GUI_ROBOTIC, by itself, creates a new GUI_ROBOTIC or raises the existing
%      singleton*.
%
%      H = GUI_ROBOTIC returns the handle to a new GUI_ROBOTIC or the handle to
%      the existing singleton*.
%
%      GUI_ROBOTIC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_ROBOTIC.M with the given input arguments.
%
%      GUI_ROBOTIC('Property','Value',...) creates a new GUI_ROBOTIC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_robotic_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_robotic_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_robotic

% Last Modified by GUIDE v2.5 01-Jun-2015 21:34:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_robotic_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_robotic_OutputFcn, ...
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


% --- Executes just before gui_robotic is made visible.
function gui_robotic_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_robotic (see VARARGIN)

% Choose default command line output for gui_robotic

handles.output = hObject;
handles.hViewer = gui_3dviwer;
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes gui_robotic wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_robotic_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editl1_Callback(hObject, eventdata, handles)
% hObject    handle to editl1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editl1 as text
%        str2double(get(hObject,'String')) returns contents of editl1 as a double


% --- Executes during object creation, after setting all properties.
function editl1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editl1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editl2_Callback(hObject, eventdata, handles)
% hObject    handle to editl2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editl2 as text
%        str2double(get(hObject,'String')) returns contents of editl2 as a double


% --- Executes during object creation, after setting all properties.
function editl2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editl2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editl3_Callback(hObject, eventdata, handles)
% hObject    handle to editl3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editl3 as text
%        str2double(get(hObject,'String')) returns contents of editl3 as a double


% --- Executes during object creation, after setting all properties.
function editl3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editl3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editl4_Callback(hObject, eventdata, handles)
% hObject    handle to editl4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editl4 as text
%        str2double(get(hObject,'String')) returns contents of editl4 as a double


% --- Executes during object creation, after setting all properties.
function editl4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editl4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editl5_Callback(hObject, eventdata, handles)
% hObject    handle to editl5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editl5 as text
%        str2double(get(hObject,'String')) returns contents of editl5 as a double


% --- Executes during object creation, after setting all properties.
function editl5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editl5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editl6_Callback(hObject, eventdata, handles)
% hObject    handle to editl6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editl6 as text
%        str2double(get(hObject,'String')) returns contents of editl6 as a double


% --- Executes during object creation, after setting all properties.
function editl6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editl6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editl7_Callback(hObject, eventdata, handles)
% hObject    handle to editl7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editl7 as text
%        str2double(get(hObject,'String')) returns contents of editl7 as a double


% --- Executes during object creation, after setting all properties.
function editl7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editl7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edittr4_Callback(hObject, eventdata, handles)
% hObject    handle to edittr4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edittr4 as text
%        str2double(get(hObject,'String')) returns contents of edittr4 as a double


% --- Executes during object creation, after setting all properties.
function edittr4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edittr4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
contents = get(hObject, 'Value');
handles = findobj('Tag', 'uipanel1'); %findobj('Tag', 'text1') findobj('Tag', 'text2') findobj('Tag', 'text3') findobj('Tag', 'text4') findobj('Tag', 'text5') findobj('Tag', 'text6') findobj('Tag', 'text7') findobj('Tag', 'text8')];
%handles = [handles findobj('Tag', 'edit1') findobj('Tag', 'edit2') findobj('Tag', 'edit3') findobj('Tag', 'edit4') findobj('Tag', 'edit5') findobj('Tag', 'edit6') findobj('Tag', 'edit7') findobj('Tag', 'edit8')];
handles2 = findobj('Tag', 'uipanel2');
handles3 = findobj('Tag', 'uipanel7');
if contents == 1

  set(handles, 'Visible', 'on');
  set(handles2, 'Visible', 'off');
  set(handles3, 'Visible', 'on');
else
  set(handles2, 'Visible', 'on');
  set(handles3, 'Visible', 'off');
  set(handles, 'Visible', 'off');
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%}
global vS0_L; global vS0_R; global vS1_L; global vS1_R;
global vE0_L; global vE0_R;  global vE1_L; global vE1_R; global vW0_L;
global vW0_R; global vW1_L;  global vW1_R; global vW2_L; global vW2_R;
global hS0_L;  global hS0_R; global hS1_L; global hS1_R;
global hE0_L; global hE0_R; global hE1_L;  global hE1_R; global hW0_L;
global hW0_R; global hW1_L;  global hW1_R; global hW2_L; global hW2_R;
global HS0_L;  global HS0_R; global HS1_L; global HS1_R;
global HE0_L; global HE0_R; global HE1_L;  global HE1_R; global HW0_L;
global HW0_R; global HW1_L;  global HW1_R; global HW2_L; global HW2_R;

set(hObject, 'Enable', 'off');
mode = get(handles.popupmenu1, 'Value');
err = '';
if mode == 1 % forward kinematics mode
thetaS0_L = str2double(get(handles.editl1, 'String'));
thetaS1_L = str2double(get(handles.editl2, 'String'));
thetaE0_L = str2double(get(handles.editl3, 'String'));
thetaE1_L = str2double(get(handles.editl4, 'String'));
thetaW0_L = str2double(get(handles.editl5, 'String'));
thetaW1_L = str2double(get(handles.editl6, 'String'));
thetaW2_L = str2double(get(handles.editl7, 'String'));

thetaS0_R = str2double(get(handles.edit15, 'String'));
thetaS1_R = str2double(get(handles.edit16, 'String'));
thetaE0_R = str2double(get(handles.edit17, 'String'));
thetaE1_R = str2double(get(handles.edit18, 'String'));
thetaW0_R = str2double(get(handles.edit19, 'String'));
thetaW1_R = str2double(get(handles.edit20, 'String'));
thetaW2_R = str2double(get(handles.edit21, 'String'));

% According to http://sdk.rethinkrobotics.com/wiki/Hardware_Specifications
% limit range of motion of each joints
if thetaS1_L > 60 || thetaS1_L < -123
  err = {'Theta S1 for Left arm is out of range' 'Input theta between -123 and 60'};
elseif thetaS1_R > 60 || thetaS1_R < -123
  err = {'Theta S1 for Right arm is out of range' 'Input theta between -123 and 60'};
elseif thetaE1_L > 150 || thetaE1_L < -3
  err = {'Theta E1 for Left arm is out of range' 'Input theta between -3 and 150'};
elseif thetaE1_R > 150 || thetaE1_R < -3
  err = {'Theta E1 for Right arm is out of range' 'Input theta between -3 and 150'};
elseif thetaW1_L > 120 || thetaW1_L < -90
  err = {'Theta W1 for Left arm is out of range' 'Input theta between -90 and 120'};
elseif thetaW1_R > 120 || thetaW1_R < -90
  err = {'Theta W1 for Right arm is out of range' 'Input theta between -90 and 120'};
elseif thetaE0_L > 173.5 || thetaE0_L < -173.5
  err = {'Theta E0 for Left arm is out of range' 'Input theta between -173.5 and 173.5'};
elseif thetaE0_R > 173.5 || thetaE0_R < -173.5
  err = {'Theta E0 for Right arm is out of range' 'Input theta between -173.5 and 173.5'};
elseif thetaS0_L > 51 || thetaS0_L < -141
  err = {'Theta S0 for Left arm is out of range' 'Input theta between -141 and 51'};
elseif thetaS0_R > 51 || thetaS0_R < -141
  err = {'Theta S0 for Right arm is out of range' 'Input theta between -141 and 51'};
elseif thetaW0_L > 175.25 || thetaW0_L < -175.25
  err = {'Theta W0 for Left arm is out of range' 'Input theta between -175.25 and 175.25'};
elseif thetaW0_R > 175.25 || thetaW0_R < -175.25
  err = {'Theta W0 for Right arm is out of range' 'Input theta between -175.25 and 175.25'};
elseif thetaW2_L > 175.25 || thetaW2_L < -175.25
  err = {'Theta W2 for Left arm is out of range' 'Input theta between -175.25 and 175.25'};
elseif thetaW2_R > 175.25 || thetaW2_R < -175.25
  err = {'Theta W2 for Right arm is out of range' 'Input theta between -175.25 and 175.25'};
end

if ~isempty(err)
  msgbox(err, 'Invalid Input Parameters', 'warn');
  set(hObject, 'Enable', 'on');
  return
end

% start animate robot
vvS0_L = zeros(size(vS0_L.vertices));
vvS1_L = zeros(size(vS1_L.vertices));
vvE0_L = zeros(size(vE0_L.vertices));
vvE1_L = zeros(size(vE1_L.vertices));
vvW0_L = zeros(size(vW0_L.vertices));
vvW1_L = zeros(size(vW1_L.vertices));
vvW2_L = zeros(size(vW2_L.vertices));
vvS0_R = zeros(size(vS0_R.vertices));
vvS1_R = zeros(size(vS1_R.vertices));
vvE0_R = zeros(size(vE0_R.vertices));
vvE1_R = zeros(size(vE1_R.vertices));
vvW0_R = zeros(size(vW0_R.vertices));
vvW1_R = zeros(size(vW1_R.vertices));
vvW2_R = zeros(size(vW2_R.vertices));
H = eye(4);

H = H * [rotz(thetaS0_L) [0;0;0]; 0 0 0 1]
HS0_L = HS0_L * H;
HS1_L = HS1_L * H;
HE0_L = HE0_L * H;
HE1_L = HE1_L * H;
HW0_L = HW0_L * H;
HW1_L = HW1_L * H;
HW2_L = HW2_L * H;
for i=1:length(vS0_L.vertices)
  h = HS0_L * [vS0_L.vertices(i,:) 1]';
  vvS0_L(i,:) = h(1:3, end)';
end
for i=1:length(vS1_L.vertices)
  h = HS1_L * [vS1_L.vertices(i,:) 1]';
  vvS1_L(i,:) = h(1:3,end)';
end
for i=1:length(vE0_L.vertices)
  h = HE0_L * [vE0_L.vertices(i,:) 1]';
  vvE0_L(i,:) = h(1:3,end)';
end
for i=1:length(vE1_L.vertices)
  h = HE1_L * [vE1_L.vertices(i,:) 1]';
  vvE1_L(i,:) = h(1:3,end)';
end
for i=1:length(vW0_L.vertices)
  h = HW0_L * [vW0_L.vertices(i,:) 1]';
  vvW0_L(i,:) = h(1:3,end)';
end
for i=1:length(vW1_L.vertices)
  h = HW1_L * [vW1_L.vertices(i,:) 1]';
  vvW1_L(i,:) = h(1:3,end)';
end
for i=1:length(vW2_L.vertices)
  h = HW2_L * [vW2_L.vertices(i,:) 1]';
  vvW2_L(i,:) = h(1:3,end)';
end

set(hS0_R, 'Vertices', vS0_R.vertices);
set(hS1_R, 'Vertices', vS1_R.vertices);
set(hE0_R, 'Vertices', vE0_R.vertices);
set(hE1_R, 'Vertices', vE1_R.vertices);
set(hW0_R, 'Vertices', vW0_R.vertices);
set(hW1_R, 'Vertices', vW1_R.vertices);
set(hW2_R, 'Vertices', vW2_R.vertices);

set(hS0_L, 'Vertices', vvS0_L);
set(hS1_L, 'Vertices', vvS1_L);
set(hE0_L, 'Vertices', vvE0_L);
set(hE1_L, 'Vertices', vvE1_L);
set(hW0_L, 'Vertices', vvW0_L);
set(hW1_L, 'Vertices', vvW1_L);
set(hW2_L, 'Vertices', vvW2_L);


elseif mode == 2 % inverse kinematics mode

end
set(hObject, 'Enable', 'on');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'Enable', 'off');
set(handles.editl1, 'String', '0');
set(handles.editl2, 'String', '0');
set(handles.editl3, 'String', '0');
set(handles.editl4, 'String', '0');
set(handles.editl5, 'String', '0');
set(handles.editl6, 'String', '0');
set(handles.editl7, 'String', '0');

set(handles.edit15, 'String', '0');
set(handles.edit16, 'String', '0');
set(handles.edit17, 'String', '0');
set(handles.edit18, 'String', '0');
set(handles.edit19, 'String', '0');
set(handles.edit20, 'String', '0');
set(handles.edit21, 'String', '0');

data = guidata(hObject);

% close the old viwer
if ishandle(data.hViewer)
  delete(data.hViewer);
end


% open new viwer
data.hViewer = gui_3dviwer;
guidata(hObject, data);

set(hObject, 'Enable', 'on');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function editrz_Callback(hObject, eventdata, handles)
% hObject    handle to editrz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editrz as text
%        str2double(get(hObject,'String')) returns contents of editrz as a double


% --- Executes during object creation, after setting all properties.
function editrz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editrz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editry_Callback(hObject, eventdata, handles)
% hObject    handle to editry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editry as text
%        str2double(get(hObject,'String')) returns contents of editry as a double


% --- Executes during object creation, after setting all properties.
function editry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editrx_Callback(hObject, eventdata, handles)
% hObject    handle to editrx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editrx as text
%        str2double(get(hObject,'String')) returns contents of editrx as a double


% --- Executes during object creation, after setting all properties.
function editrx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editrx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editlz_Callback(hObject, eventdata, handles)
% hObject    handle to editlz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editlz as text
%        str2double(get(hObject,'String')) returns contents of editlz as a double


% --- Executes during object creation, after setting all properties.
function editlz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editlz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editly_Callback(hObject, eventdata, handles)
% hObject    handle to editly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editly as text
%        str2double(get(hObject,'String')) returns contents of editly as a double


% --- Executes during object creation, after setting all properties.
function editly_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editlx_Callback(hObject, eventdata, handles)
% hObject    handle to editlx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editlx as text
%        str2double(get(hObject,'String')) returns contents of editlx as a double


% --- Executes during object creation, after setting all properties.
function editlx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editlx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject, 'Visible', 'off')


% --- Executes on button press in ViewerButton.
function ViewerButton_Callback(hObject, eventdata, handles)
% hObject    handle to ViewerButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = guidata(hObject);

% close the old viwer
if ishandle(data.hViewer)
  delete(data.hViewer);
end


% open new viwer
data.hViewer = gui_3dviwer;
guidata(hObject, data);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% TODO: call helper window


function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
