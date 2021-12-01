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
z=8;f=0.5;w0=2*pi*f;ph=0;t=0:0.01:8;ft=0.5*z*sin(w0*t+pi*ph/180);ft1=0.5*z*sin(w0*t);plot(t,ft,'r',t,ft1);
legend('�����Ʋ���','�����Ʋ���');axis([0 8 -6 6]);xlabel('t(s)');ylabel('����(V)');title('�����ź�');grid on;

h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.675,0.11,0.30,0.79], ...
'horizontal' , 'left' ,'fontsize' ,11);

str1= ' ����(Vpp) =' ;
htext=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','fontname',' ����' ,'fontsize' ,10,'backgroundcolor',[0.3 0.8 0.6],'position' ,[0.7,0.81,0.25,0.06], ...
'string' ,[str1,sprintf( '%1.4g' ,z)]);
hslider=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.7,0.74,0.25,0.09], ...
'max' ,10, 'min' ,0, ... 
'sliderstep' ,[0.01,0.05], ... 
'Value' ,8); 
set(hslider, 'callback' ,[ ... % ���������� , ����ص� 
'z=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'xhsyhs3(htext,str1,z,htext1,str2,f,htext2,str3,ph,h_axes)' ]); % ���ص��ĺ����ļ� 
str2= ' Ƶ��(Hz) ='; 
htext1=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','fontname',' ����' ,'fontsize' ,10,'backgroundcolor',[0.3 0.8 0.6],'position' ,[0.7,0.60,0.25,0.06], ...
'string' ,[str2,sprintf( '%1.4g' ,f)]);
hslider1=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.7,0.53,0.25,0.09], ...
'max' ,5.05, 'min' ,0.05, ... 
'sliderstep' ,[0.01,0.05], ... 
'Value' ,0.5); 
set(hslider1, 'callback' ,[ ... % ���������� , ����ص� 
'f=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'xhsyhs3(htext,str1,z,htext1,str2,f,htext2,str3,ph,h_axes)' ]); % ���ص��ĺ����ļ� 
str3= ' ��λ��(��) ='; 
htext2=uicontrol(gcf, 'style' , 'text' , ... % ������̬˵���ı��� 
'foregroundcolor','k','fontname',' ����' ,'fontsize' ,10,'backgroundcolor',[0.3 0.8 0.6],'position' ,[0.7,0.39,0.25,0.06], ...
'string' ,[str3,sprintf( '%1.4g' ,ph)]);
hslider2=uicontrol(gcf, 'style' , 'slider' , ... % ���������� 
'position' ,[0.7,0.32,0.25,0.09], ...
'max' ,180, 'min' ,-180, ... 
'sliderstep' ,[1/36,5/36], ... 
'Value' ,0); 
set(hslider2, 'callback' ,[ ... % ���������� , ����ص� 
'ph=get(gcbo,''value'');' , ... % ��û�����״ֵ̬ 
'xhsyhs3(htext,str1,z,htext1,str2,f,htext2,str3,ph,h_axes)' ]); % ���ص��ĺ����ļ� 
h_push=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'foregroundcolor','k','fontname',' ����' ,'fontsize' ,11,'backgroundcolor',[0.9 0.7 0.6],'position' ,[0.7,0.14,0.25,0.1], ...
'string' , '���ز���ѡ�񴰿�' , 'callback' , 'xhsyhs1' );