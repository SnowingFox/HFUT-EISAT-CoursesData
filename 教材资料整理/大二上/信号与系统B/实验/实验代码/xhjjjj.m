% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
H=axes( 'unit' , 'normalized' , 'position' ,[0,0,1,1], 'visible' , 'off' );
set(gcf, 'currentaxes' ,H);
h_fig=get(H, 'parent' );
set(h_fig, 'unit' , 'normalized' , 'position' ,[0.18,0.2,0.7,0.6]);
str= ' �����źŵľ������ ' ;
set(gcf, 'name' ,str, 'color',[0.7 0.7 0.9],'numbertitle' , 'off' ); % ��дͼ�δ���
h_axes=axes( 'position' ,[0.07,0.69,0.59,0.26]);ylabel('x(t)');grid on; % ������λ��λ��
h_axes1=axes( 'position' ,[0.07,0.385,0.59,0.26]);ylabel('h(t)');grid on; % ������λ��λ��
h_axes2=axes( 'position' ,[0.07,0.08,0.59,0.26]);xlabel('t/s');ylabel('x(t)*h(t)');grid on; % ������λ��λ��

h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.7,0.075,0.27,0.87], ...
'horizontal' , 'left' ,'fontsize' ,11);

h_text=uicontrol(h_fig, 'style' , 'text' , ...
'unit' , 'normalized' , 'HorizontalAlignment','left','position' ,[0.73,0.78,0.21,0.08], ...
'horizontal' , 'left' , 'fontsize' ,11,'fontname',' ����' ,'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'string' ,{ 'x(t)'});
h_popup = uicontrol(h_fig, 'Style','popupmenu','fontsize' ,9,'foregroundcolor','k','Units','normalized','Position',[0.73 0.67 0.21 0.15],'BackgroundColor','white','String',{'�����ź�','�����ź�','��λб���ź�','��λ���ﲨ�ź�','ָ�������ź�','���������ź�','��λ��Ծ����'});
h_text=uicontrol(h_fig, 'style' , 'text' , ...
'unit' , 'normalized' , 'HorizontalAlignment','left','position' ,[0.73,0.60,0.21,0.08], ...
'horizontal' , 'left' , 'fontsize' ,11,'fontname',' ����' ,'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'string' ,{ 'h(t)'});
h_popup1 = uicontrol(h_fig, 'Style','popupmenu','fontsize' ,9,'foregroundcolor','k','Units','normalized','Position',[0.73 0.49 0.21 0.15],'BackgroundColor','white','String',{'�����ź�','�����ź�','��λб���ź�','��λ���ﲨ�ź�','ָ�������ź�','���������ź�','��λ��Ծ����'});
h_push=uicontrol(h_fig, 'style' , 'push' , ...
'unit' , 'normalized' ,'foregroundcolor','k', 'backgroundcolor',[0.3 0.8 0.6],'position' ,[0.73,0.36,0.21,0.11], ...
'fontname',' ����' ,'fontsize' ,11,'string' , '��  ʼ  ��  ��' , 'callback' , ['xhjjhs3(h_popup,h_popup1,h_axes,h_axes1,h_axes2)' ] );
h_push=uicontrol(h_fig, 'style' , 'push' , ...
'unit' , 'normalized' ,'foregroundcolor','k', 'backgroundcolor',[0.9 0.7 0.6],'position' ,[0.73,0.16,0.21,0.11], ...
'fontname',' ����' ,'fontsize' ,11,'string' , '��  ��  Ŀ  ¼' , 'callback' , 'xhdjbys' );

