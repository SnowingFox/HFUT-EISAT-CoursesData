% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
set(gcf, 'unit' , 'normalized' , 'position' ,[0.18,0.2,0.70,0.60]);
set(gcf, 'defaultuicontrolunits' , 'normalized' );
set(gcf, 'defaultuicontrolhorizontal' , 'left' );
str='�źŵ���������';
set(gcf, 'name' ,str,'color',[0.7 0.7 0.9], 'numbertitle' , 'off' ); % ��дͼ�δ���
h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.53,0.04,0.43,0.24], ...
'horizontal' , 'left' ,'fontsize' ,11);
h_axes=axes( 'position' ,[0.05,0.70,0.43,0.24]); title('ԭʼ�ź�');grid on;  % ������λ��λ��
h_axes1=axes( 'position' ,[0.05,0.37,0.43,0.24]); title('�����ź�');grid on;% ������λ��λ��
h_axes2=axes( 'position' ,[0.05,0.04,0.43,0.24]); title('�����ź�');grid on; % ������λ��λ��
h_axes3=axes( 'position' ,[0.53,0.7,0.43,0.24]); title('�߶ȱ任');grid on; % ������λ��λ��
h_axes4=axes( 'position' ,[0.53,0.37,0.43,0.24]); title('�ź��ӳ�');grid on;% ������λ��λ��

axes(h_axes);t=-5:0.001:5;y=square(pi*t);plot(t,y,'b');title('ԭʼ�ź�');axis([-3 3 -1.5 1.5]);grid on;
axes(h_axes1);t=-5:0.001:5;y=square(-pi*t);plot(t,y,'b');title('�����ź�');axis([-3 3 -1.5 1.5]);grid on;
axes(h_axes2);t=-5:0.001:5;y=-square(pi*t);plot(t,y,'b');title('�����ź�');axis([-3 3 -1.5 1.5]);grid on;
axes(h_axes3);w6=1;t=-5:0.001:5;y=square(pi*w6*t);plot(t,y,'b');title('�߶ȱ任');axis([-3 3 -1.5 1.5]);grid on;
axes(h_axes4);t6=0;t=-5:0.001:5;y=square(pi*(t-t6));plot(t,y,'b');title('�ź��ӳ�');axis([-3 3 -1.5 1.5]);grid on;

str1= ' �ź��ӳ�(s) =' ;
htext=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'fontname','����','fontsize' ,10,'position' ,[0.56,0.085,0.22,0.06], ...
'string' ,[str1,sprintf( '%1.4g' ,t6)]);
hslider=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.56,0.06,0.22,0.05], ...
'max' ,2, 'min' ,-2, ... 
'sliderstep' ,[0.01,0.05], ... 
'Value' ,0); 
set(hslider, 'callback' ,[ ... % ���������� , ����ص� 
't6=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'other6(htext,str1,t6,htext1,str2,w6,h_axes3,h_axes4)' ]); % ���ص��ĺ����ļ� 
str2= '�߶ȱ任 =' ;
htext1=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'fontname','����','fontsize' ,10,'position' ,[0.56,0.20,0.22,0.06], ...
'string' ,[str2,sprintf( '%1.4g' ,w6)]);
hslider1=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.56,0.175,0.22,0.05], ...
'max' ,10, 'min' ,0, ... 
'sliderstep' ,[0.01,0.05], ... 
'Value' ,1); 
set(hslider1, 'callback' ,[ ... % ���������� , ����ص� 
'w6=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'other6(htext,str1,t6,htext1,str2,w6,h_axes3,h_axes4)' ]); % ���ص��ĺ����ļ� 

h_push=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'fontname','����','fontsize' ,11,'foregroundcolor','k','backgroundcolor',[0.9 0.7 0.6],'position' ,[0.81,0.12,0.12,0.07], ...
'string' , '��  ��' , 'callback' , 'xhdqtys' );

