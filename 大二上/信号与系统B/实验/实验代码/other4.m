% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02 
function other4(htext,str1,t4,htext1,str2,w4,h_axes3,h_axes4)
cla,set(htext, 'string' ,[str1,sprintf( '%1.4g' ,t4)]); % ���¾�̬�ı�������
cla,set(htext1, 'string' ,[str2,sprintf( '%1.4g' ,w4)]); % ���¾�̬�ı�������

axes(h_axes3);t=-5:0.001:5;y=exp(w4*2*t);plot(t,y,'b');title('�߶ȱ任');axis([-3 3 0 10]);grid on;
axes(h_axes4);t=-5:0.001:5;y=exp(2*(t-t4));plot(t,y,'b');title('�ź��ӳ�');axis([-3 3 0 10]);grid on;