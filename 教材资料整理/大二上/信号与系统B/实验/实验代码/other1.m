% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02 
function other1(htext,str1,t1,htext1,str2,w1,h_axes3,h_axes4)
cla,set(htext, 'string' ,[str1,sprintf( '%1.4g' ,t1)]); % ���¾�̬�ı�������
cla,set(htext1, 'string' ,[str2,sprintf( '%1.4g' ,w1)]); % ���¾�̬�ı�������

axes(h_axes3);t=-5:0.001:5;y=cos(w1*pi*t);plot(t,y,'b');title('�߶ȱ任');axis([-3 3 -1 1]);grid on;
axes(h_axes4);t=-5:0.001:5;y=cos(pi*(t-t1));plot(t,y,'b');title('�ź��ӳ�');axis([-3 3 -1 1]);grid on;