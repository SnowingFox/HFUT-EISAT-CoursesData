% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
function xhsyhs5(htext,str1,z,htext1,str2,f,htext2,str3,duty,h_axes)
cla,set(htext, 'string' ,[str1,sprintf( '%1.4g' ,z)]); % ���¾�̬�ı������� 
cla,set(htext1, 'string' ,[str2,sprintf( '%1.4g' ,f)]); % ���¾�̬�ı������� 
cla,set(htext2, 'string' ,[str3,sprintf( '%1.4g' ,duty)]); % ���¾�̬�ı������� 
axes(h_axes);
t=-1:0.001:1;y=0.5*z*square(2*pi*f*t,duty); plot(t,y);axis([-1 1 -6 6]);xlabel('t(s)');ylabel('����(V)');title('���β��ź�');grid on;