% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
set(gcf, 'unit' , 'normalized' , 'position' ,[0.18,0.2,0.6,0.5]);
set(gcf, 'defaultuicontrolunits' , 'normalized' );
set(gcf, 'defaultuicontrolfontsize' ,12);
set(gcf, 'defaultuicontrolfontname' , ' ���� ' );
set(gcf, 'defaultuicontrolhorizontal' , 'left' );
str= '����ϵͳ��Ծ��Ӧ���� ' ;
set(gcf, 'name' ,str,'color',[0.7 0.7 0.9], 'numbertitle' , 'off' ); % ��дͼ�δ���
h_axes=axes( 'position' ,[0.08,0.13,0.6,0.8]); % ������λ��λ��

set(h_axes, 'xlim' ,[0,20]); % ����ʱ���᳤��
grid on;
h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.7,0.1,0.28,0.62], ...
'horizontal' , 'left' ,'fontsize' ,11);

hcheck1=uicontrol(gcf, 'style' , 'checkbox' , ... % ������ֵ��¼�� 
'foregroundcolor','k','fontsize' ,10,'backgroundcolor',[0.3 0.8 0.6],'string' , ' ����ֵ ' , ...
'position' ,[0.72,0.45,0.15,0.07]);
vchk1=get(hcheck1, 'value' ); % ��÷�ֵ��¼���״ֵ̬ 
set(hcheck1, 'callback' ,[ ... % ������ֵ��¼�� , ����ص� 
'vchk1=get(gcbo,''value'');' , ... % ��÷�ֵ��¼��״ֵ̬ 
'callcheck(vchk1)' ]); % ���ص��ĺ����ļ� 

h_text=uicontrol(gcf, 'style' , 'text' , ...
'unit' , 'normalized' , 'position' ,[0.72,0.62,0.24,0.05], ...
'horizontal' , 'left' ,'fontsize' ,10,'foregroundcolor','k','backgroundcolor',[0.3 0.8 0.6], 'string' ,{ 'K ȡֵΪ��' });
h_edit=uicontrol(gcf, 'style' , 'edit' , ...
'unit' , 'normalized' ,'foregroundcolor','k','backgroundcolor','w', 'position' ,[0.72,0.56,0.24,0.07], ...
'fontname','����','fontsize' ,10,'horizontal' , 'left' , ...
'callback' ,[ ...
'z=str2num(get(gcbo,''string''));']);

h_push5=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' ,'fontname','����','fontsize' ,13, 'backgroundcolor',[0.9 0.7 0.6],'position' ,[0.72,0.3,0.24,0.10], ...
'string' , 'ȷ   ��' ,'foregroundcolor','k', 'callback' , 'callcheck(z,h_axes,vchk1)' );


h_push=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' ,'foregroundcolor','k','fontsize' ,13,'backgroundcolor',[0.9 0.7 0.6], 'position' ,[0.72,0.15,0.24,0.10], ...
'string' , '������һҳ' , 'callback' , 'lxxtxy' );
h_text1=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'unit' , 'normalized' ,'position' ,[0.7,0.88,0.18,0.04], ...
'horizontal' , 'center' , 'fontsize' ,11,'fontname',' ����' ,'foregroundcolor','blue','backgroundcolor',[0.7 0.7 0.9],'string' , { 'ϵͳ������'});
h3=axes('Position',[0.6,0.6,0.63,0.4]); % ���û���ͼ����λ�� 
set(h3,'Xlim',[0,1.2],'Ylim',[0,0.5]) % ������Ŀ̶ȷ�Χ 
set(h3,'DataAspectRatio',[1 1 1]) % ���ÿ̶ȱ��� 
set(h3,'ColorOrder',[0,0,0]) % ���û��ߵ���ѡ��ɫ 
set(h3,'Visible','off') % ��ȥ������
xx7=0.4:0.001:0.6;yy7=0.27*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(0.25,0.27,'\Phi(s)= ','fontsize' ,11,'color','blue','hor','left'); 
text(0.4,0.24,'(s+k)^2+4 ','fontsize' ,11,'color','blue','hor','left');
text(0.4,0.31,'10(s+k) ','fontsize' ,11,'color','blue','hor','left');