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

% Last Modified by GUIDE v2.5 31-May-2015 20:02:19

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



function edittr1_Callback(hObject, eventdata, handles)
% hObject    handle to edittr1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edittr1 as text
%        str2double(get(hObject,'String')) returns contents of edittr1 as a double


% --- Executes during object creation, after setting all properties.
function edittr1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edittr1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edittr2_Callback(hObject, eventdata, handles)
% hObject    handle to edittr2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edittr2 as text
%        str2double(get(hObject,'String')) returns contents of edittr2 as a double


% --- Executes during object creation, after setting all properties.
function edittr2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edittr2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edittr3_Callback(hObject, eventdata, handles)
% hObject    handle to edittr3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edittr3 as text
%        str2double(get(hObject,'String')) returns contents of edittr3 as a double


% --- Executes during object creation, after setting all properties.
function edittr3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edittr3 (see GCBO)
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
if contents == 1

  set(handles, 'Visible', 'on');
  set(handles2, 'Visible', 'off');
  
else
  set(handles2, 'Visible', 'on');
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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

