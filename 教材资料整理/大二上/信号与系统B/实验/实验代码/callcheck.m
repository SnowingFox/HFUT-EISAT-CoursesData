% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
function callcheck(z,h_axes,vchk1)
axes(h_axes);
dt=0.1;t=0:dt:20;N=length(t);y=step([10 10*z],[1 2*z z^2+4],t);plot(t,y);grid on;xlabel('t(s)');ylabel('y(t)');
 
if vchk1 % �����ֵ��ѡ�� 
[ym,km]=max(y);
if km<(N-3) % �������趨ʱ�䷶Χ���ܲ�ֵ 
k1=km-3;k2=km+3;k12=k1:k2;tt=t(k12);
yy=spline(t(k12),y(k12),tt); % �ֲ�������ֵ 
[yym,kkm]=max(yy); % �����ȷ�ķ�ֵλ��
line(tt(kkm),yym, 'marker' , '.' , ... % ����ֵ�� 
'markeredgecolor' , 'r' , 'markersize' ,20);
ystr=[ 'ymax = ' ,sprintf( '%1.4g' ,yym)];
tstr=[ 'tmax = ' ,sprintf( '%1.4g' ,tt(kkm))];
text(tt(kkm),0.9*yym,{ystr;tstr})
else % �������趨ʱ�䷶Χ�ڲ��ܲ�ֵ 
text(10,0.4*y(end),{ 'ymax --> 1' ; 'tmax --> inf' })
end
end

h3=axes('Position',[0.6,0.6,0.63,0.4]); % ���û���ͼ����λ�� 
set(h3,'Xlim',[0,1.2],'Ylim',[0,0.5]) % ������Ŀ̶ȷ�Χ 
set(h3,'DataAspectRatio',[1 1 1]) % ���ÿ̶ȱ��� 
set(h3,'ColorOrder',[0,0,0]) % ���û��ߵ���ѡ��ɫ 
set(h3,'Visible','off') % ��ȥ������
xx7=0.4:0.001:0.6;yy7=0.27*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(0.25,0.27,'\Phi(s)= ','fontsize' ,11,'color','blue','hor','left'); 
text(0.4,0.24,'(s+k)^2+4 ','fontsize' ,11,'color','blue','hor','left');
text(0.4,0.31,'10(s+k) ','fontsize' ,11,'color','blue','hor','left');
