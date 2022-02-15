% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
set(gcf, 'unit' , 'normalized' , 'position' ,[0.18,0.2,0.7,0.5]);
set(gcf, 'defaultuicontrolunits' , 'normalized' );
set(gcf, 'defaultuicontrolhorizontal' , 'left' );
str='�����ź�';
set(gcf, 'name' ,str, 'color',[0.7 0.7 0.9],'numbertitle' , 'off' ); % ��дͼ�δ���
h_axes=axes( 'position' ,[0.08,0.15,0.56,0.75]); % ������λ��λ��

h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.675,0.11,0.30,0.64], ...
'horizontal' , 'left' ,'fontsize' ,11);


z=5;a=2;t=0:0.01:5;ft=z*exp(-a*t); plot(t,ft);axis([0 5 0 10]);xlabel('t(s)');ylabel('����(V)');title('ָ�������ź�');grid on;
str1= ' K(0��10)   ��ǰֵ=' ;
htext=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'fontname',' ����' ,'fontsize' ,10,'position' ,[0.7,0.64,0.25,0.06], ...
'string' ,[str1,sprintf( '%1.4g' ,z)]);
hslider=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.7,0.57,0.25,0.09], ...
'max' ,10, 'min' ,0, ... 
'sliderstep' ,[0.01,0.05], ... 
'Value' ,5); 
str2= ' a(0��5)   ��ǰֵ='; 
htext1=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'fontname',' ����' ,'fontsize' ,10,'position' ,[0.7,0.42,0.25,0.06], ...
'string' ,[str2,sprintf( '%1.4g' ,a)]);
hslider1=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.7,0.35,0.25,0.09], ...
'max' ,5, 'min' ,0, ... 
'sliderstep' ,[0.01,0.05], ... 
'Value' ,2); 
set(hslider, 'callback' ,[ ... % ���������� , ����ص� 
'z=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'xhsyhs7(htext,str1,z,htext1,str2,a,h_axes)' ]); % ���ص��ĺ����ļ� 
set(hslider1, 'callback' ,[ ... % ���������� , ����ص� 
'a=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'xhsyhs7(htext,str1,z,htext1,str2,a,h_axes)' ]); % ���ص��ĺ����ļ� 
h_push=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' ,'fontname',' ����' ,'fontsize' ,11,'foregroundcolor','k', 'backgroundcolor',[0.9 0.7 0.6],'position' ,[0.7,0.16,0.25,0.1], ...
'string' , '���ز���ѡ�񴰿�' , 'callback' , 'xhsyhs1' );
h_text1=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'unit' , 'normalized' ,'position' ,[0.7,0.82,0.12,0.07], ...
'horizontal' , 'center' , 'fontsize' ,11,'fontname',' ����' ,'foregroundcolor','blue','backgroundcolor',[0.7 0.7 0.9],'string' , { 'ָ��������'});
h3=axes('Position',[0.48,0.62,0.63,0.32]); % ���û���ͼ����λ�� 
set(h3,'Xlim',[0,1.2],'Ylim',[0,0.5]); % ������Ŀ̶ȷ�Χ 
set(h3,'DataAspectRatio',[1 1 1]); % ���ÿ̶ȱ��� 
set(h3,'ColorOrder',[0,0,0]); % ���û��ߵ���ѡ��ɫ 
set(h3,'Visible','off'); % ��ȥ������ 
text(0.6,0.29,'f(t)=Ke^-^a^t ','hor','left','fontsize',12,'color','blue');

