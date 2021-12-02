% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
set(gcf, 'unit' , 'normalized' , 'position' ,[0.18,0.2,0.7,0.5]);
set(gcf, 'defaultuicontrolunits' , 'normalized' );
set(gcf, 'defaultuicontrolhorizontal' , 'left' );
str='�����ź�';
set(gcf, 'name' ,str,'color',[0.7 0.7 0.9], 'numbertitle' , 'off' ); % ��дͼ�δ���
h_axes=axes( 'position' ,[0.08,0.15,0.56,0.75]); % ������λ��λ��

h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.675,0.11,0.30,0.79], ...
'horizontal' , 'left' ,'fontsize' ,11);

a=5;t=5;x=0:0.001:10;y=a*(x>t);plot(x,y);axis([0 10 -10 10]);xlabel('t(s)');ylabel('����(V)');title('��Ծ�ź�');grid on;
str1= ' ����(Vpp) =' ;
htext=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'fontname',' ����' ,'fontsize' ,10,'position' ,[0.7,0.77,0.25,0.06], ...
'string' ,[str1,sprintf( '%1.4g' ,a)]);
hslider=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.7,0.7,0.25,0.09], ...
'max' ,10, 'min' ,-10, ... 
'sliderstep' ,[0.01,0.05], ... 
'Value' ,5); 
set(hslider, 'callback' ,[ ... % ���������� , ����ص� 
'a=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'xhsyhs13(htext,str1,a,htext1,str2,t,h_axes)' ]); % ���ص��ĺ����ļ� 
str2= ' �ͺ�ʱ��(s) =' ;
htext1=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'fontname',' ����' ,'fontsize' ,10,'position' ,[0.7,0.50,0.25,0.06], ...
'string' ,[str2,sprintf( '%1.4g' ,t)]);
hslider1=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.7,0.43,0.25,0.09], ...
'max' ,10, 'min' ,0, ... 
'sliderstep' ,[0.01,0.05], ... 
'Value' ,5); 
set(hslider1, 'callback' ,[ ... % ���������� , ����ص� 
't=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'xhsyhs13(htext,str1,a,htext1,str2,t,h_axes)' ]); % ���ص��ĺ����ļ� 
h_push=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' ,'fontname',' ����' , 'fontsize' ,11,'foregroundcolor','k','backgroundcolor',[0.9 0.7 0.6],'position' ,[0.7,0.19,0.25,0.1], ...
'string' , '���ز���ѡ�񴰿�' , 'callback' , 'xhsyhs1' );