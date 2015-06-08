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

% Last Modified by GUIDE v2.5 03-Jun-2015 10:52:19

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
handles.theta_L = zeros(1, 7);
handles.theta_R = zeros(1, 7);
handles.itheta_L = zeros(1,7);
handles.itheta_R = zeros(1,7);
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
global HS0_L;  global HS0_R; global HS1; global HE0; global HE1;
global HW0; global HW1; global HW2; global hTarget; global HEndEff;
global htextLeft; global htextRight; global HEND;

set(hObject, 'Enable', 'off');
data = guidata(hObject);
theta_R = data.theta_R;
theta_L = data.theta_L;
itheta_R = data.itheta_R;
itheta_L = data.itheta_L;
enable_L = get(handles.checkbox1, 'Value');
enable_R = get(handles.checkbox2, 'Value');
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
% however, our STL model is not match with origin one; we use custom
% limit range of motion of each joints
if thetaS1_L > 30 || thetaS1_L < -100
  err = {'Theta S1 for Left arm is out of range' 'Input theta between -100 and 30'};
elseif thetaS1_R > 30 || thetaS1_R < -100
  err = {'Theta S1 for Right arm is out of range' 'Input theta between -100 and 30'};
elseif thetaE1_L > 80 || thetaE1_L < -3
  err = {'Theta E1 for Left arm is out of range' 'Input theta between -3 and 80'};
elseif thetaE1_R > 80 || thetaE1_R < -3
  err = {'Theta E1 for Right arm is out of range' 'Input theta between -3 and 80'};
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
target_L = [thetaS0_L thetaS1_L thetaE0_L thetaE1_L thetaW0_L thetaW1_L thetaW2_L];
target_R = [thetaS0_R thetaS1_R thetaE0_R thetaE1_R thetaW0_R thetaW1_R thetaW2_R];
if ~isempty(err)
  msgbox(err, 'Invalid Input Parameters', 'warn');
  set(hObject, 'Enable', 'on');
  return
end

% start animate robot
for joint = 1:7
  while theta_L(joint) ~= target_L(joint)
    if abs(theta_L(joint) - target_L(joint)) < 0.5
      theta_L(joint) = target_L(joint);
    else
      if theta_L(joint) > target_L(joint)
        theta_L(joint) = theta_L(joint) - 0.5;
      else
        theta_L(joint) = theta_L(joint) + 0.5;
      end
    end
    H = HS0_L * [rotz(theta_L(1)) [0;0;0]; 0 0 0 1];
    h = H * [vS0_L.vertices'; ones(1,length(vS0_L.vertices))];
    vvS0_L = h(1:3, :)';

    H = H * HS1 * [roty(theta_L(2)) [0;0;0]; 0 0 0 1];
    h = H * [vS1_L.vertices'; ones(1,length(vS1_L.vertices))];
    vvS1_L = h(1:3, :)';

    H = H * HE0 * [rotz(theta_L(3)) [0;0;0]; 0 0 0 1];
    h = H * [vE0_L.vertices'; ones(1,length(vE0_L.vertices))];
    vvE0_L = h(1:3, :)';

    H = H * HE1 * [roty(theta_L(4)) [0;0;0]; 0 0 0 1];
    h = H * [vE1_L.vertices'; ones(1,length(vE1_L.vertices))];
    vvE1_L = h(1:3, :)';

    H = H * HW0 * [rotz(theta_L(5)) [0;0;0]; 0 0 0 1];
    h = H * [vW0_L.vertices'; ones(1,length(vW0_L.vertices))];
    vvW0_L = h(1:3, :)';

    H = H * HW1 * [roty(theta_L(6)) [0;0;0]; 0 0 0 1];
    h = H * [vW1_L.vertices'; ones(1,length(vW1_L.vertices))];
    vvW1_L = h(1:3, :)';

    H = H * HW2 * [rotz(theta_L(7)) [0;0;0]; 0 0 0 1];
    h = H * [vW2_L.vertices'; ones(1,length(vW2_L.vertices))];
    vvW2_L = h(1:3, :)';
    H = H * HEND;
    HEndEff(2, :) = H(1:3, end)';
    
    
    % render viewer
    set(hS0_L, 'Vertices', vvS0_L);
    set(hS1_L, 'Vertices', vvS1_L);
    set(hE0_L, 'Vertices', vvE0_L);
    set(hE1_L, 'Vertices', vvE1_L);
    set(hW0_L, 'Vertices', vvW0_L);
    set(hW1_L, 'Vertices', vvW1_L);
    set(hW2_L, 'Vertices', vvW2_L);
    set(htextLeft, 'String', sprintf('(%.4f, %.4f, %.4f)', HEndEff(2, 1), HEndEff(2, 2), HEndEff(2, 3)));
    % delay
    pause(0.0001);
  end
end

for joint = 1:7
  while theta_R(joint) ~= target_R(joint)
    if abs(theta_R(joint) - target_R(joint)) < 0.5
      theta_R(joint) = target_R(joint);
    else
      if theta_R(joint) > target_R(joint)
        theta_R(joint) = theta_R(joint) - 0.5;
      else
        theta_R(joint) = theta_R(joint) + 0.5;
      end
    end
    H = HS0_R * [rotz(-theta_R(1)) [0;0;0]; 0 0 0 1];
    h = H * [vS0_R.vertices'; ones(1,length(vS0_R.vertices))];
    vvS0_R = h(1:3, :)';

    H = H * HS1 * [roty(theta_R(2)) [0;0;0]; 0 0 0 1];
    h = H * [vS1_R.vertices'; ones(1,length(vS1_R.vertices))];
    vvS1_R = h(1:3, :)';

    H = H * HE0 * [rotz(-theta_R(3)) [0;0;0]; 0 0 0 1];
    h = H * [vE0_R.vertices'; ones(1,length(vE0_R.vertices))];
    vvE0_R = h(1:3, :)';

    H = H * HE1 * [roty(theta_R(4)) [0;0;0]; 0 0 0 1];
    h = H * [vE1_R.vertices'; ones(1,length(vE1_R.vertices))];
    vvE1_R = h(1:3, :)';

    H = H * HW0 * [rotz(-theta_R(5)) [0;0;0]; 0 0 0 1];
    h = H * [vW0_R.vertices'; ones(1,length(vW0_R.vertices))];
    vvW0_R = h(1:3, :)';

    H = H * HW1 * [roty(theta_R(6)) [0;0;0]; 0 0 0 1];
    h = H * [vW1_R.vertices'; ones(1,length(vW1_R.vertices))];
    vvW1_R = h(1:3, :)';

    H = H * HW2 * [rotz(-theta_R(7)) [0;0;0]; 0 0 0 1];
    h = H * [vW2_R.vertices'; ones(1,length(vW2_R.vertices))];
    vvW2_R = h(1:3, :)';
    H = H * HEND;
    HEndEff(1, :) = H(1:3, end)';
    
    % render viewer
    set(hS0_R, 'Vertices', vvS0_R);
    set(hS1_R, 'Vertices', vvS1_R);
    set(hE0_R, 'Vertices', vvE0_R);
    set(hE1_R, 'Vertices', vvE1_R);
    set(hW0_R, 'Vertices', vvW0_R);
    set(hW1_R, 'Vertices', vvW1_R);
    set(hW2_R, 'Vertices', vvW2_R);
    set(htextRight, 'String', sprintf('(%.4f, %.4f, %.4f)', HEndEff(1, 1), HEndEff(1, 2), HEndEff(1, 3)));
    % delay
    pause(0.0001);
  end
end

%save data
data.theta_L = theta_L;
data.theta_R = theta_R;
guidata(hObject, data);

elseif mode == 2 % inverse kinematics mode
  lx = str2double(get(handles.editlx, 'String'));
  ly = str2double(get(handles.editly, 'String'));
  lz = str2double(get(handles.editlz, 'String'));

  rx = str2double(get(handles.editrx, 'String'));
  ry = str2double(get(handles.editry, 'String'));
  rz = str2double(get(handles.editrz, 'String'));
  set(hTarget(1), 'XData', lx, 'YData', ly, 'ZData', lz);
  set(hTarget(2), 'XData', rx, 'YData', ry, 'ZData', rz);
  
  % Inverse Kinematics: Jacobian Transpose Method
  % Ref: Welman C. (1989). Inverse Kinematics and Geometric Constraints for
  % Articulated Figure Manipulation. Simon Fraser University. Canada
  
  %% Left arm
  if enable_L
  q = itheta_L';
  p_target = [lx ly lz 0 0 1];
  P = zeros(8, 3); % store position vector (p) of each joint
  axis = zeros(7,3);
  
  % pre calcular end-effector position/orientation
  H = HS0_L * [rotz(itheta_L(1)) [0;0;0]; 0 0 0 1];
  P(1, :) = H(1:3, end)';
  axis(1,:) = H(1:3, 3)';
  H = H * HS1 * [roty(itheta_L(2)) [0;0;0]; 0 0 0 1];
  P(2, :) = H(1:3, end)';
  axis(2,:) = H(1:3, 2)';
  H = H * HE0 * [rotz(itheta_L(3)) [0;0;0]; 0 0 0 1];
  P(3, :) = H(1:3, end)';
  axis(3,:) = H(1:3, 1)';
  H = H * HE1 * [roty(itheta_L(4)) [0;0;0]; 0 0 0 1];
  P(4, :) = H(1:3, end)';
  axis(4,:) = H(1:3, 2)';
  H = H * HW0 * [rotz(itheta_L(5)) [0;0;0]; 0 0 0 1];
  P(5, :) = H(1:3, end)';
  axis(5,:) = H(1:3, 1)';
  H = H * HW1 * [roty(itheta_L(6)) [0;0;0]; 0 0 0 1];
  P(6, :) = H(1:3, end)';
  axis(6,:) = H(1:3, 2)';
  H = H * HW2 * [rotz(itheta_L(7)) [0;0;0]; 0 0 0 1];
  P(7, :) = H(1:3, end)';
  axis(7,:) = H(1:3, 1)';
  H = H * HEND;
  P(8, :) = H(1:3, end)';
  
  p_end = [H(1:3, end)' H(1:3,3)'];
  err_L = norm(p_end(1:3) - p_target(1:3));
  
  % Length of each joint
  L = [norm(P(2,:) - P(1, :)) norm(P(3,:) - P(2, :)) norm(P(4,:) - P(3, :))...
      norm(P(5,:) - P(4, :)) norm(P(6,:) - P(5, :)) norm(P(7,:) - P(6, :))...
      norm(P(8,:) - P(7, :))];
  % stiffness
  alpha = .1 * ones(1,7);
  step_h = 0.1;
  Fi = 1;
   
  % numerical loop
  iter_L = 0;
  % create progressbar
  hProgress = waitbar(0, '', 'Name', 'Left Arm IK', ...
    'CreateCancelBtn', 'setappdata(gcbf, ''isCancel'', 1);');
  setappdata(hProgress, 'isCancel', 0);
  while err_L > 0.01
    
    if getappdata(hProgress, 'isCancel')
      break;
    end
    
    iter_L = iter_L + 1;
    if iter_L > 10000
      break;
    else
      waitbar(iter_L/10000, hProgress, sprintf('error: %.4f', err_L));
    end
    
    
    if err_L < 1
      alpha = ones(1,7);
      step_h = 0.05;
    elseif err_L < 20
      alpha = .5 * ones(1,7);
      step_h = 0.08;
    end
    
    J = [cross((P(8,:) - P(1,:)), axis(1, :))' cross((P(8,:) - P(2,:)), axis(2, :))' ...
      cross((P(8,:) - P(3,:)), axis(3, :))' cross((P(8,:) - P(4,:)), axis(4, :))' ...
      cross((P(8,:) - P(5,:)), axis(5, :))' cross((P(8,:) - P(6,:)), axis(6, :))' ...
      cross((P(8,:) - P(7,:)), axis(7, :))'; ...
      axis(1, :)' axis(2, :)' axis(3, :)' axis(4, :)' axis(5, :)' axis(6, :)' axis(7, :)'];
    K = 1 ./ (L.*alpha);
    F = Fi .* (p_end - p_target)';
    delta_q = K' .* (J'*F);
    new_q = q + step_h * delta_q;

    H = HS0_L * [rotz(new_q(1)) [0;0;0]; 0 0 0 1] ...
      * HS1 * [roty(new_q(2)) [0;0;0]; 0 0 0 1] ...
      * HE0 * [rotz(new_q(3)) [0;0;0]; 0 0 0 1] ...
      * HE1 * [roty(new_q(4)) [0;0;0]; 0 0 0 1] ...
      * HW0 * [rotz(new_q(5)) [0;0;0]; 0 0 0 1] ...
      * HW1 * [roty(new_q(6)) [0;0;0]; 0 0 0 1] ...
      * HW2 * [rotz(new_q(7)) [0;0;0]; 0 0 0 1] * HEND;
    p_end = [H(1:3, end)' H(1:3,3)'];
    new_err = norm(p_end(1:3) - p_target(1:3));
    
    % convergence checkout
    if new_err > err_L
      q = q + step_h * 0.005 * delta_q;
    else
      q = q + step_h * delta_q;
    end
    
    
    
    if q(1) > 51
      q(1) = 51;
    elseif q(1) < -141
      q(1) = -141;
    end
    if q(2) > 30
      q(2) = 30;
    elseif q(2) < -100
      q(2) = -100;
    end
    if q(3) > 173.5
      q(3) = 173.5;
    elseif q(3) < -173.5
      q(3) = -173.5;
    end
    if q(4) > 80
      q(4) = 80;
    elseif q(4) < -3
      q(4) = -3;
    end
    if q(5) > 175.25
      q(5) = 175.25;
    elseif q(5) < -175.25
      q(5) = -175.25;
    end
    if q(6) > 120
      q(6) = 120;
    elseif q(6) < -90
      q(6) = -90;
    end
    if q(7) > 175.25
      q(7) = 175.25;
    elseif q(7) < -175.25
      q(7) = -175.25;
    end
    
    H = HS0_L * [rotz(q(1)) [0;0;0]; 0 0 0 1];
    P(1, :) = H(1:3, end)';
    axis(1,:) = H(1:3, 3)';
    H = H * HS1 * [roty(q(2)) [0;0;0]; 0 0 0 1];
    P(2, :) = H(1:3, end)';
    axis(2,:) = H(1:3, 2)';
    H = H * HE0 * [rotz(q(3)) [0;0;0]; 0 0 0 1];
    P(3, :) = H(1:3, end)';
    axis(3,:) = H(1:3, 1)';
    H = H * HE1 * [roty(q(4)) [0;0;0]; 0 0 0 1];
    P(4, :) = H(1:3, end)';
    axis(4,:) = H(1:3, 2)';
    H = H * HW0 * [rotz(q(5)) [0;0;0]; 0 0 0 1];
    P(5, :) = H(1:3, end)';
    axis(5,:) = H(1:3, 1)';
    H = H * HW1 * [roty(q(6)) [0;0;0]; 0 0 0 1];
    P(6, :) = H(1:3, end)';
    axis(6,:) = H(1:3, 2)';
    H = H * HW2 * [rotz(q(7)) [0;0;0]; 0 0 0 1];
    P(7, :) = H(1:3, end)';
    axis(7,:) = H(1:3, 1)';
    H = H * HEND;
    P(8, :) = H(1:3, end)';
    p_end = [H(1:3, end)' H(1:3,3)'];
    err_L = norm(p_end(1:3) - p_target(1:3));
  end
    delete(hProgress);
    itheta_L = q';
    data.itheta_L = q';
  end
  
  %% Right arm
  if enable_R
  q = [-1 1 -1 1 -1 1 -1] .* itheta_R';
  p_target = [-rx ry rz 0 0 1];
  P = zeros(8, 3); % store position vector (p) of each joint
  axis = zeros(7,3);
  
  % pre calcular end-effector position/orientation
  H = HS0_L * [rotz(itheta_R(1)) [0;0;0]; 0 0 0 1];
  P(1, :) = H(1:3, end)';
  axis(1,:) = H(1:3, 3)';
  H = H * HS1 * [roty(itheta_R(2)) [0;0;0]; 0 0 0 1];
  P(2, :) = H(1:3, end)';
  axis(2,:) = H(1:3, 2)';
  H = H * HE0 * [rotz(itheta_R(3)) [0;0;0]; 0 0 0 1];
  P(3, :) = H(1:3, end)';
  axis(3,:) = H(1:3, 1)';
  H = H * HE1 * [roty(itheta_R(4)) [0;0;0]; 0 0 0 1];
  P(4, :) = H(1:3, end)';
  axis(4,:) = H(1:3, 2)';
  H = H * HW0 * [rotz(itheta_R(5)) [0;0;0]; 0 0 0 1];
  P(5, :) = H(1:3, end)';
  axis(5,:) = H(1:3, 1)';
  H = H * HW1 * [roty(itheta_R(6)) [0;0;0]; 0 0 0 1];
  P(6, :) = H(1:3, end)';
  axis(6,:) = H(1:3, 2)';
  H = H * HW2 * [rotz(itheta_R(7)) [0;0;0]; 0 0 0 1];
  P(7, :) = H(1:3, end)';
  axis(7,:) = H(1:3, 1)';
  H = H * HEND;
  P(8, :) = H(1:3, end)';
  
  p_end = [H(1:3, end)' H(1:3,3)'];
  err_R = norm(p_end(1:3) - p_target(1:3));
  
  % Length of each joint
  L = [norm(P(2,:) - P(1, :)) norm(P(3,:) - P(2, :)) norm(P(4,:) - P(3, :))...
      norm(P(5,:) - P(4, :)) norm(P(6,:) - P(5, :)) norm(P(7,:) - P(6, :))...
      norm(P(8,:) - P(7, :))];
  % stiffness
  alpha = .1 * ones(1,7);
  Fi = 1;
   
  % numerical loop
  iter_R = 0;
  % create progressbar
  hProgress = waitbar(0, '', 'Name', 'Right Arm IK', ...
    'CreateCancelBtn', 'setappdata(gcbf, ''isCancel'', 1);');
  setappdata(hProgress, 'isCancel', 0);
  while err_R > 0.01
    
    iter_R = iter_R + 1;
    if getappdata(hProgress, 'isCancel')
      break;
    end
    if iter_R > 10000
      break;
    else
      waitbar(iter_R/10000, hProgress, sprintf('error: %.4f', err_R));
    end
    
    
    if err_R < 0.1
      step_h = 0.05;
    elseif err_R < 50
      step_h = 0.09;
    else
      step_h = 0.1;
    end
    
    J = [cross((P(8,:) - P(1,:)), axis(1, :))' cross((P(8,:) - P(2,:)), axis(2, :))' ...
      cross((P(8,:) - P(3,:)), axis(3, :))' cross((P(8,:) - P(4,:)), axis(4, :))' ...
      cross((P(8,:) - P(5,:)), axis(5, :))' cross((P(8,:) - P(6,:)), axis(6, :))' ...
      cross((P(8,:) - P(7,:)), axis(7, :))'; ...
      axis(1, :)' axis(2, :)' axis(3, :)' axis(4, :)' axis(5, :)' axis(6, :)' axis(7, :)'];
    K = 1 ./ (L.*alpha);
    F = Fi .* (p_end - p_target)';
    delta_q = K' .* (J'*F);
    new_q = q + step_h * delta_q;

    H = HS0_R * [rotz(new_q(1)) [0;0;0]; 0 0 0 1] ...
      * HS1 * [roty(new_q(2)) [0;0;0]; 0 0 0 1] ...
      * HE0 * [rotz(new_q(3)) [0;0;0]; 0 0 0 1] ...
      * HE1 * [roty(new_q(4)) [0;0;0]; 0 0 0 1] ...
      * HW0 * [rotz(new_q(5)) [0;0;0]; 0 0 0 1] ...
      * HW1 * [roty(new_q(6)) [0;0;0]; 0 0 0 1] ...
      * HW2 * [rotz(new_q(7)) [0;0;0]; 0 0 0 1] * HEND;
    p_end = [H(1:3, end)' H(1:3,3)'];
    new_err = norm(p_end(1:3) - p_target(1:3));
    
    % convergence checkout
    if new_err > err_R
      q = q + step_h * 0.005 * delta_q;
      % run CCD
      % delete(hProgress);
      %q = ik_ccd(p_target, q, 'right');
    else
      q = q + step_h * delta_q;
    end
    
    if q(1) > 51
      q(1) = 51;
    elseif q(1) < -141
      q(1) = -141;
    end
    if q(2) > 30
      q(2) = 30;
    elseif q(2) < -100
      q(2) = -100;
    end
    if q(3) > 173.5
      q(3) = 173.5;
    elseif q(3) < -173.5
      q(3) = -173.5;
    end
    if q(4) > 80
      q(4) = 80;
    elseif q(4) < -3
      q(4) = -3;
    end
    if q(5) > 175.25
      q(5) = 175.25;
    elseif q(5) < -175.25
      q(5) = -175.25;
    end
    if q(6) > 120
      q(6) = 120;
    elseif q(6) < -90
      q(6) = -90;
    end
    if q(7) > 175.25
      q(7) = 175.25;
    elseif q(7) < -175.25
      q(7) = -175.25;
    end
    
    H = HS0_L * [rotz(q(1)) [0;0;0]; 0 0 0 1];
    P(1, :) = H(1:3, end)';
    axis(1,:) = H(1:3, 3)';
    H = H * HS1 * [roty(q(2)) [0;0;0]; 0 0 0 1];
    P(2, :) = H(1:3, end)';
    axis(2,:) = H(1:3, 2)';
    H = H * HE0 * [rotz(q(3)) [0;0;0]; 0 0 0 1];
    P(3, :) = H(1:3, end)';
    axis(3,:) = H(1:3, 1)';
    H = H * HE1 * [roty(q(4)) [0;0;0]; 0 0 0 1];
    P(4, :) = H(1:3, end)';
    axis(4,:) = H(1:3, 2)';
    H = H * HW0 * [rotz(q(5)) [0;0;0]; 0 0 0 1];
    P(5, :) = H(1:3, end)';
    axis(5,:) = H(1:3, 1)';
    H = H * HW1 * [roty(q(6)) [0;0;0]; 0 0 0 1];
    P(6, :) = H(1:3, end)';
    axis(6,:) = H(1:3, 2)';
    H = H * HW2 * [rotz(q(7)) [0;0;0]; 0 0 0 1];
    P(7, :) = H(1:3, end)';
    axis(7,:) = H(1:3, 1)';
    H = H * HEND;
    P(8, :) = H(1:3, end)';
    p_end = [H(1:3, end)' H(1:3,3)'];
    err_R = norm(p_end(1:3) - p_target(1:3));
  end
    delete(hProgress);
    itheta_R = q';
    data.itheta_R = q';
  end 
  %% Post Processing
  % If right arm found IK solution; render animation
  if enable_L % && err_L < 0.1
  set(handles.editl1, 'String', num2str(itheta_L(1)));
  set(handles.editl2, 'String', num2str(itheta_L(2)));
  set(handles.editl3, 'String', num2str(itheta_L(3)));
  set(handles.editl4, 'String', num2str(itheta_L(4)));
  set(handles.editl5, 'String', num2str(itheta_L(5)));
  set(handles.editl6, 'String', num2str(itheta_L(6)));
  set(handles.editl7, 'String', num2str(itheta_L(7)));
  target_L = itheta_L;
  % start animate robot
  for joint = 1:7
    while theta_L(joint) ~= target_L(joint)
      if abs(theta_L(joint) - target_L(joint)) < 0.5
        theta_L(joint) = target_L(joint);
      else
        if theta_L(joint) > target_L(joint)
          theta_L(joint) = theta_L(joint) - 0.5;
        else
          theta_L(joint) = theta_L(joint) + 0.5;
        end
      end
      H = HS0_L * [rotz(theta_L(1)) [0;0;0]; 0 0 0 1];
      h = H * [vS0_L.vertices'; ones(1,length(vS0_L.vertices))];
      vvS0_L = h(1:3, :)';

      H = H * HS1 * [roty(theta_L(2)) [0;0;0]; 0 0 0 1];
      h = H * [vS1_L.vertices'; ones(1,length(vS1_L.vertices))];
      vvS1_L = h(1:3, :)';

      H = H * HE0 * [rotz(theta_L(3)) [0;0;0]; 0 0 0 1];
      h = H * [vE0_L.vertices'; ones(1,length(vE0_L.vertices))];
      vvE0_L = h(1:3, :)';

      H = H * HE1 * [roty(theta_L(4)) [0;0;0]; 0 0 0 1];
      h = H * [vE1_L.vertices'; ones(1,length(vE1_L.vertices))];
      vvE1_L = h(1:3, :)';

      H = H * HW0 * [rotz(theta_L(5)) [0;0;0]; 0 0 0 1];
      h = H * [vW0_L.vertices'; ones(1,length(vW0_L.vertices))];
      vvW0_L = h(1:3, :)';

      H = H * HW1 * [roty(theta_L(6)) [0;0;0]; 0 0 0 1];
      h = H * [vW1_L.vertices'; ones(1,length(vW1_L.vertices))];
      vvW1_L = h(1:3, :)';

      H = H * HW2 * [rotz(theta_L(7)) [0;0;0]; 0 0 0 1];
      h = H * [vW2_L.vertices'; ones(1,length(vW2_L.vertices))];
      vvW2_L = h(1:3, :)';
      H = H * HEND;
      HEndEff(2, :) = H(1:3, end)';


      % render viewer
      set(hS0_L, 'Vertices', vvS0_L);
      set(hS1_L, 'Vertices', vvS1_L);
      set(hE0_L, 'Vertices', vvE0_L);
      set(hE1_L, 'Vertices', vvE1_L);
      set(hW0_L, 'Vertices', vvW0_L);
      set(hW1_L, 'Vertices', vvW1_L);
      set(hW2_L, 'Vertices', vvW2_L);
      set(htextLeft, 'String', sprintf('(%.4f, %.4f, %.4f)', HEndEff(2, 1), HEndEff(2, 2), HEndEff(2, 3)));
      % delay
      pause(0.00001);
    end
  end
  data.theta_L = theta_L;
  end
  
  % If right arm found IK solution; render animation
  if enable_R %&& err_R < 0.1
  set(handles.edit15, 'String', num2str(itheta_R(1)));
  set(handles.edit16, 'String', num2str(itheta_R(2)));
  set(handles.edit17, 'String', num2str(itheta_R(3)));
  set(handles.edit18, 'String', num2str(itheta_R(4)));
  set(handles.edit19, 'String', num2str(itheta_R(5)));
  set(handles.edit20, 'String', num2str(itheta_R(6)));
  set(handles.edit21, 'String', num2str(itheta_R(7)));
  target_R = [-1 1 -1 1 -1 1 -1] .* itheta_R;
  for joint = 1:7
  while theta_R(joint) ~= target_R(joint)
    if abs(theta_R(joint) - target_R(joint)) < 0.5
      theta_R(joint) = target_R(joint);
    else
      if theta_R(joint) > target_R(joint)
        theta_R(joint) = theta_R(joint) - 0.5;
      else
        theta_R(joint) = theta_R(joint) + 0.5;
      end
    end
    H = HS0_R * [rotz(theta_R(1)) [0;0;0]; 0 0 0 1];
    h = H * [vS0_R.vertices'; ones(1,length(vS0_R.vertices))];
    vvS0_R = h(1:3, :)';

    H = H * HS1 * [roty(theta_R(2)) [0;0;0]; 0 0 0 1];
    h = H * [vS1_R.vertices'; ones(1,length(vS1_R.vertices))];
    vvS1_R = h(1:3, :)';

    H = H * HE0 * [rotz(theta_R(3)) [0;0;0]; 0 0 0 1];
    h = H * [vE0_R.vertices'; ones(1,length(vE0_R.vertices))];
    vvE0_R = h(1:3, :)';

    H = H * HE1 * [roty(theta_R(4)) [0;0;0]; 0 0 0 1];
    h = H * [vE1_R.vertices'; ones(1,length(vE1_R.vertices))];
    vvE1_R = h(1:3, :)';

    H = H * HW0 * [rotz(theta_R(5)) [0;0;0]; 0 0 0 1];
    h = H * [vW0_R.vertices'; ones(1,length(vW0_R.vertices))];
    vvW0_R = h(1:3, :)';

    H = H * HW1 * [roty(theta_R(6)) [0;0;0]; 0 0 0 1];
    h = H * [vW1_R.vertices'; ones(1,length(vW1_R.vertices))];
    vvW1_R = h(1:3, :)';

    H = H * HW2 * [rotz(theta_R(7)) [0;0;0]; 0 0 0 1];
    h = H * [vW2_R.vertices'; ones(1,length(vW2_R.vertices))];
    vvW2_R = h(1:3, :)';
    H = H * HEND;
    HEndEff(1, :) = H(1:3, end)';
    
    % render viewer
    set(hS0_R, 'Vertices', vvS0_R);
    set(hS1_R, 'Vertices', vvS1_R);
    set(hE0_R, 'Vertices', vvE0_R);
    set(hE1_R, 'Vertices', vvE1_R);
    set(hW0_R, 'Vertices', vvW0_R);
    set(hW1_R, 'Vertices', vvW1_R);
    set(hW2_R, 'Vertices', vvW2_R);
    set(htextRight, 'String', sprintf('(%.4f, %.4f, %.4f)', HEndEff(1, 1), HEndEff(1, 2), HEndEff(1, 3)));
    % delay
    pause(0.00001);
  end
  end
  data.theta_R = theta_R;
  end 
  
  if enable_L
  msgbox({'LEFT ARM' sprintf('Number of Iterations: %d', iter_L) ...
    sprintf('error: %f', err_L) ...
    }, 'Result');
  end
  if enable_R
    msgbox({'RIGHT ARM' sprintf('Number of Iterations: %d', iter_R) ...
    sprintf('error: %f', err_R) ...
    }, 'Result');
  end
  
end

set(hObject, 'Enable', 'on');
guidata(hObject, data);

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
data.theta_L = zeros(1, 7);
data.theta_R = zeros(1, 7);
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
if isfield(data, 'hWorkspace')
if ishandle(data.hWorkspace)
  delete(data.hWorkspace);
end
end


% open new viwer
data.hWorkspace = gui_workspace;
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


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global hTarget;
lx = str2double(get(handles.editlx, 'String'));
ly = str2double(get(handles.editly, 'String'));
lz = str2double(get(handles.editlz, 'String'));

rx = str2double(get(handles.editrx, 'String'));
ry = str2double(get(handles.editry, 'String'));
rz = str2double(get(handles.editrz, 'String'));
set(hTarget(1), 'XData', [lx], 'YData', [ly], 'ZData', [lz]);
set(hTarget(2), 'XData', [rx], 'YData', [ry], 'ZData', [rz]);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
