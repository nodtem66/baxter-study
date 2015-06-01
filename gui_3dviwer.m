function varargout = gui_3dviwer(varargin)
% GUI_3DVIWER MATLAB code for gui_3dviwer.fig
%      GUI_3DVIWER, by itself, creates a new GUI_3DVIWER or raises the existing
%      singleton*.
%
%      H = GUI_3DVIWER returns the handle to a new GUI_3DVIWER or the handle to
%      the existing singleton*.
%
%      GUI_3DVIWER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_3DVIWER.M with the given input arguments.
%
%      GUI_3DVIWER('Property','Value',...) creates a new GUI_3DVIWER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_3dviwer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_3dviwer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_3dviwer

% Last Modified by GUIDE v2.5 01-Jun-2015 23:02:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_3dviwer_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_3dviwer_OutputFcn, ...
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


% --- Executes just before gui_3dviwer is made visible.
function gui_3dviwer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_3dviwer (see VARARGIN)

% Choose default command line output for gui_3dviwer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_3dviwer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_3dviwer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
% --- Executes during object creation, after setting all properties.
global vBody; global vS0_L; global vS0_R; global vS1_L; global vS1_R;
global vE0_L; global vE0_R;  global vE1_L; global vE1_R; global vW0_L;
global vW0_R; global vW1_L;  global vW1_R; global vW2_L; global vW2_R;
global hBody; global hS0_L;  global hS0_R; global hS1_L; global hS1_R;
global hE0_L; global hE0_R; global hE1_L;  global hE1_R; global hW0_L;
global hW0_R; global hW1_L;  global hW1_R; global hW2_L; global hW2_R;

vBody = stlread('baxter_body.STL');
vS0_L = stlread('S0.STL');
vS0_R = stlread('S0.STL');
vS1_L = stlread('S1.STL');
vS1_R = stlread('S1.STL');
vE0_L = stlread('E0.STL');
vE0_R = stlread('E0.STL');
vE1_L = stlread('E1.STL');
vE1_R = stlread('E1.STL');
vW0_L = stlread('W0.STL');
vW0_R = stlread('W0.STL');
vW1_L = stlread('W1.STL');
vW1_R = stlread('W1.STL');
vW2_L = stlread('W2.STL');
vW2_R = stlread('W2.STL');
% fv.vertices = fv.vertices - 500;
hBody = patch(vBody, 'FaceColor', [0.8 0.8 1], 'EdgeColor', 'none');
hS0_L = patch(vS0_L, 'FaceColor', [0.8 0.2 0.2], 'EdgeColor', 'none');
hS0_R = patch(vS0_R, 'FaceColor', [0.8 0.2 0.2], 'EdgeColor', 'none');
hS1_L = patch(vS1_L, 'FaceColor', [0.2 0.2 0.2], 'EdgeColor', 'none');
hS1_R = patch(vS1_R, 'FaceColor', [0.2 0.2 0.2], 'EdgeColor', 'none');
hE0_L = patch(vE0_L, 'FaceColor', [0.2 0.8 0.8], 'EdgeColor', 'none');
hE0_R = patch(vE0_R, 'FaceColor', [0.2 0.8 0.8], 'EdgeColor', 'none');
hE1_L = patch(vE1_L, 'FaceColor', [0.2 0.2 0.2], 'EdgeColor', 'none');
hE1_R = patch(vE1_R, 'FaceColor', [0.2 0.2 0.2], 'EdgeColor', 'none');
hW0_L = patch(vW0_L, 'FaceColor', [0.8 0.2 0.2], 'EdgeColor', 'none');
hW0_R = patch(vW0_R, 'FaceColor', [0.8 0.2 0.2], 'EdgeColor', 'none');
hW1_L = patch(vW1_L, 'FaceColor', [0.2 0.2 0.2], 'EdgeColor', 'none');
hW1_R = patch(vW1_R, 'FaceColor', [0.2 0.2 0.2], 'EdgeColor', 'none');
hW2_L = patch(vW2_L, 'FaceColor', [0.2 0.8 0.2], 'EdgeColor', 'none');
hW2_R = patch(vW2_R, 'FaceColor', [0.2 0.8 0.2], 'EdgeColor', 'none');

% Light and Default View
camlight('headlight');
material('dull');
view([240, 30]);
axis([-2000 2000 -2000 2000 0 2000]);
grid on;

% translation / rotate to normal position
vBody.vertices = ones(length(vBody.vertices), 1) * [-500 -500 0] +  vBody.vertices;
set(hBody, 'Vertices', vBody.vertices);
vS0_R.vertices = ones(length(vS0_R.vertices), 1) * [-115 -115 0] + vS0_R.vertices;
vS0_L.vertices = ones(length(vS0_L.vertices), 1) * [-115 -115 0] + vS0_L.vertices;
vS1_R.vertices = ones(length(vS1_R.vertices), 1) * [-115 -140 -174.87] + vS1_R.vertices;
vS1_L.vertices = ones(length(vS1_L.vertices), 1) * [-115 -140 -174.87] + vS1_L.vertices;
vE0_R.vertices = (ones(length(vE0_R.vertices), 1) * [-124.6191 -121.9409 0] + vE0_R.vertices) * roty(90);
vE0_L.vertices = (ones(length(vE0_L.vertices), 1) * [-124.6191 -121.9409 0] + vE0_L.vertices) * roty(-90);
vE1_R.vertices = (ones(length(vE1_R.vertices), 1) * [-115 -115.01 -62.1653] + vE1_R.vertices) * rotz(90);
vE1_L.vertices = (ones(length(vE1_L.vertices), 1) * [-115 -115.01 -62.1653] + vE1_L.vertices) * rotz(90);
vW0_R.vertices = (ones(length(vW0_R.vertices), 1) * [-115 -115.2681 0] + vW0_R.vertices) * roty(90);
vW0_L.vertices = (ones(length(vW0_L.vertices), 1) * [-115 -115.2681 0] + vW0_L.vertices) * roty(-90);
vW1_R.vertices = (ones(length(vW1_R.vertices), 1) * [-65.3227 -75 -65] + vW1_R.vertices) * roty(90);
vW1_L.vertices = (ones(length(vW1_L.vertices), 1) * [-65.3227 -75 -65] + vW1_L.vertices) * roty(-90);
vW2_R.vertices = (ones(length(vW2_R.vertices), 1) * [-35 -35 0] + vW2_R.vertices) * roty(90);
vW2_L.vertices = (ones(length(vW2_L.vertices), 1) * [-35 -35 0] + vW2_L.vertices) * roty(-90);

HS0_R = [1 0 0 -355; 0 1 0 -45; 0 0 1 58; 0 0 0 1]; % * [rotz(45) [0;0;0]; 0 0 0 1];
for i=1:length(vS0_R.vertices)
  h = HS0_R * [vS0_R.vertices(i,:) 1]';
  vS0_R.vertices(i,:) = h(1:3, end)';
end
HS0_L = [1 0 0 355; 0 1 0 -45; 0 0 1 58; 0 0 0 1] * [rotz(180) [0;0;0]; 0 0 0 1];
for i=1:length(vS0_L.vertices)
  h = HS0_L * [vS0_L.vertices(i,:) 1]';
  vS0_L.vertices(i,:) = h(1:3, end)';
end
HS1_R = [1 0 0 -355; 0 1 0 -45; 0 0 1 1400; 0 0 0 1] * [roty(90) [0;0;0]; 0 0 0 1];
for i=1:length(vS1_R.vertices)
  h = HS1_R * [vS1_R.vertices(i,:) 1]';
  vS1_R.vertices(i,:) = h(1:3,end)';
end
HS1_L = [1 0 0 355; 0 1 0 -45; 0 0 1 1400; 0 0 0 1] * [roty(-90) [0;0;0]; 0 0 0 1];
for i=1:length(vS1_L.vertices)
  h = HS1_L * [vS1_L.vertices(i,:) 1]';
  vS1_L.vertices(i,:) = h(1:3,end)';
end
HE0_R = [1 0 0 -520; 0 1 0 -45; 0 0 1 1400; 0 0 0 1] * [rotx(180) [0;0;0]; 0 0 0 1];
for i=1:length(vE0_R.vertices)
  h = HE0_R * [vE0_R.vertices(i,:) 1]';
  vE0_R.vertices(i,:) = h(1:3,end)';
end
HE0_L = [1 0 0 520; 0 1 0 -45; 0 0 1 1400; 0 0 0 1]; %* [rotx(45) [0;0;0]; 0 0 0 1];
for i=1:length(vE0_L.vertices)
  h = HE0_L * [vE0_L.vertices(i,:) 1]';
  vE0_L.vertices(i,:) = h(1:3,end)';
end
HE1_R = [1 0 0 -817.5; 0 1 0 -45; 0 0 1 1305; 0 0 0 1] * [roty(-90) [0;0;0]; 0 0 0 1];
for i=1:length(vE1_R.vertices)
  h = HE1_R * [vE1_R.vertices(i,:) 1]';
  vE1_R.vertices(i,:) = h(1:3,end)';
end
HE1_L = [1 0 0 817.5; 0 1 0 -45; 0 0 1 1305; 0 0 0 1] * [roty(90) [0;0;0]; 0 0 0 1];
for i=1:length(vE1_L.vertices)
  h = HE1_L * [vE1_L.vertices(i,:) 1]';
  vE1_L.vertices(i,:) = h(1:3,end)';
end
HW0_R = [1 0 0 -937.5; 0 1 0 -45; 0 0 1 1305; 0 0 0 1] * [rotx(180) [0;0;0]; 0 0 0 1];
for i=1:length(vW0_R.vertices)
  h = HW0_R * [vW0_R.vertices(i,:) 1]';
  vW0_R.vertices(i,:) = h(1:3,end)';
end
HW0_L = [1 0 0 937.5; 0 1 0 -45; 0 0 1 1305; 0 0 0 1]; % * [rotx(45) [0;0;0]; 0 0 0 1];
for i=1:length(vW0_L.vertices)
  h = HW0_L * [vW0_L.vertices(i,:) 1]';
  vW0_L.vertices(i,:) = h(1:3,end)';
end
HW1_R = [1 0 0 -1356.5; 0 1 0 -45; 0 0 1 1305; 0 0 0 1]; % * [roty(45) [0;0;0]; 0 0 0 1];
for i=1:length(vW1_R.vertices)
  h = HW1_R * [vW1_R.vertices(i,:) 1]';
  vW1_R.vertices(i,:) = h(1:3,end)';
end
HW1_L = [1 0 0 1356.5; 0 1 0 -45; 0 0 1 1305; 0 0 0 1]; % * [roty(45) [0;0;0]; 0 0 0 1];
for i=1:length(vW1_L.vertices)
  h = HW1_L * [vW1_L.vertices(i,:) 1]';
  vW1_L.vertices(i,:) = h(1:3,end)';
end
HW2_R = [1 0 0 -1576.5; 0 1 0 -45; 0 0 1 1305; 0 0 0 1]; % * [rotx(45) [0;0;0]; 0 0 0 1];
for i=1:length(vW2_R.vertices)
  h = HW2_R * [vW2_R.vertices(i,:) 1]';
  vW2_R.vertices(i,:) = h(1:3,end)';
end
HW2_L = [1 0 0 1576.5; 0 1 0 -45; 0 0 1 1305; 0 0 0 1]; % * [rotx(45) [0;0;0]; 0 0 0 1];
for i=1:length(vW2_L.vertices)
  h = HW2_L * [vW2_L.vertices(i,:) 1]';
  vW2_L.vertices(i,:) = h(1:3,end)';
end

set(hS0_R, 'Vertices', vS0_R.vertices);
set(hS0_L, 'Vertices', vS0_L.vertices);
set(hS1_R, 'Vertices', vS1_R.vertices);
set(hS1_L, 'Vertices', vS1_L.vertices);
set(hE0_R, 'Vertices', vE0_R.vertices);
set(hE0_L, 'Vertices', vE0_L.vertices);
set(hE1_R, 'Vertices', vE1_R.vertices);
set(hE1_L, 'Vertices', vE1_L.vertices);
set(hW0_R, 'Vertices', vW0_R.vertices);
set(hW0_L, 'Vertices', vW0_L.vertices);
set(hW1_R, 'Vertices', vW1_R.vertices);
set(hW1_L, 'Vertices', vW1_L.vertices);
set(hW2_R, 'Vertices', vW2_R.vertices);
set(hW2_L, 'Vertices', vW2_L.vertices);
