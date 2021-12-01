% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
function xhsyhs5(htext,str1,z,htext1,str2,a,h_axes)
cla,set(htext, 'string' ,[str1,sprintf( '%1.4g' ,z)]); % ���¾�̬�ı������� 
cla,set(htext1, 'string' ,[str2,sprintf( '%1.4g' ,a)]); % ���¾�̬�ı������� 
axes(h_axes);
t=0:0.01:5;ft=z*exp(-a*t); plot(t,ft);axis([0 5 0 10]);xlabel('t(s)');ylabel('����(V)');title('ָ�������ź�');grid on;
h3=axes('Position',[0.48,0.62,0.63,0.32]); % ���û���ͼ����λ�� 
set(h3,'Xlim',[0,1.2],'Ylim',[0,0.5]); % ������Ŀ̶ȷ�Χ 
set(h3,'DataAspectRatio',[1 1 1]); % ���ÿ̶ȱ��� 
set(h3,'ColorOrder',[0,0,0]); % ���û��ߵ���ѡ��ɫ 
set(h3,'Visible','off'); % ��ȥ������ 
text(0.6,0.29,'f(t)=Ke^-^a^t ','hor','left','fontsize',12,'color','blue');