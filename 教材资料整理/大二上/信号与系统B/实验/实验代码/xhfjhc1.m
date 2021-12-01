% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
H=axes( 'unit' , 'normalized' , 'position' ,[0,0,1,1], 'visible' , 'off' );
set(gcf, 'currentaxes' ,H);
h_fig=get(H, 'parent' );
set(h_fig, 'unit' , 'normalized' , 'position' ,[0.18,0.2,0.65,0.5]);
str= ' �����źŵķֽ���ϳ� ' ;
set(gcf, 'name' ,str, 'color',[0.7 0.7 0.9],'numbertitle' , 'off' ); % ��дͼ�δ���
h_axes=axes( 'position' ,[0.08,0.15,0.58,0.75]); % ������λ��λ��
t=-4:pi/1000:4;x1=square(pi*t);plot(t,x1,'b');axis([0 3 -1.5 1.5]);legend('ԭ�ź�');
xlabel('t(s)');ylabel('����(V)');grid on;
h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.695,0.11,0.275,0.79], ...
'horizontal' , 'left' ,'fontsize' ,11);

h_text=uicontrol(h_fig, 'style' , 'text' , ...
'unit' , 'normalized' , 'HorizontalAlignment','left','position' ,[0.715,0.725,0.24,0.1], ...
'horizontal' , 'left' , 'fontsize' ,11,'fontname',' ����' ,'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6],'string' ,{ '�ϳɴ���'});
h_popup = uicontrol(h_fig, 'Style','popupmenu','fontsize' ,9,'foregroundcolor','k','Units','normalized','Position',[0.715 0.63 0.24 0.15],'BackgroundColor','white','String',{'�����ź�','����������г���ĺϳ�','���������Ρ����г���ĺϳ�','�����������塢�ߴ�г���ϳ�'});
h_push=uicontrol(h_fig, 'style' , 'push' , ...
'unit' , 'normalized' ,'foregroundcolor','k', 'backgroundcolor',[0.3 0.8 0.6],'position' ,[0.715,0.46,0.24,0.11], ...
'fontname',' ����' ,'fontsize' ,12,'string' , '��  ʼ  ��  ��' , 'callback' , [  'xhfjhc2(h_popup,h_axes)' ] );
h_push=uicontrol(h_fig, 'style' , 'push' , ...
'unit' , 'normalized' ,'foregroundcolor','k', 'backgroundcolor',[0.9 0.7 0.6],'position' ,[0.715,0.2,0.24,0.11], ...
'fontname',' ����' ,'fontsize' ,12,'string' , '��    ��' , 'callback' , 'xhfjhc' );