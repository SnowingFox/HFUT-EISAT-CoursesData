% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
function xhsyhs3(htext,str1,z,htext1,str2,f,htext2,str3,ph,h_axes)
cla,set(htext, 'string' ,[str1,sprintf( '%1.4g' ,z)]); % ���¾�̬�ı������� 
cla,set(htext1, 'string' ,[str2,sprintf( '%1.4g' ,f)]); % ���¾�̬�ı������� 
cla,set(htext2, 'string' ,[str3,sprintf( '%1.4g' ,ph)]); % ���¾�̬�ı������� 
axes(h_axes);
w0=2*pi*f;t=0:0.01:8;ft=0.5*z*sin(w0*t+pi*ph/180);ft1=0.5*z*sin(w0*t);plot(t,ft,'r',t,ft1);
legend('�����Ʋ���','�����Ʋ���');axis([0 8 -6 6]);xlabel('t(s)');ylabel('����(V)');title('�����ź�');grid on;
