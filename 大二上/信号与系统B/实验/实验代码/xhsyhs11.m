% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
function xhsyhs11(htext,str1,a,htext1,str2,f,htext2,str3,w,h_axes)
cla,set(htext, 'string' ,[str1,sprintf( '%1.4g' ,a)]); % ���¾�̬�ı�������
cla,set(htext1, 'string' ,[str2,sprintf( '%1.4g' ,f)]); % ���¾�̬�ı�������
cla,set(htext2, 'string' ,[str3,sprintf( '%1.4g' ,w)]); % ���¾�̬�ı�������
axes(h_axes);
t=-2:0.01:10;b=w/100;x=a*sawtooth(2*pi*f*t,b)/2;plot(t,x);axis([-2 10 -6 6]);xlabel('t(s)');ylabel('����(V)');title('��ݲ��ź�');grid on;