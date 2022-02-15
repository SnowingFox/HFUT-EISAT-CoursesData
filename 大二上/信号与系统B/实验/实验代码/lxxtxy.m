% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
str= ' ����ϵͳ����Ӧ ' ;
set(gcf, 'name' ,str,'unit' , 'normalized' , 'color',[0.7 0.7 0.9],'numbertitle' , 'off','position' ,[0.18,0.2,0.7,0.6] ); % ��дͼ�δ���

h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.72,0.08,0.25,0.84], ...
'horizontal' , 'left' ,'fontsize' ,11);

h_push1=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'backgroundcolor',[0.3 0.8 0.6],'position' ,[0.75,0.45,0.19,0.1], ...
'foregroundcolor','k','fontname','����','fontsize' ,13,'string' , '��λ��Ծ��Ӧ' , ...
'callback' , 'jyxy');
h_push2=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'position' ,[0.75,0.7,0.19,0.1], ...
'foregroundcolor','k','fontname','����','fontsize' ,13,'backgroundcolor',[0.3 0.8 0.6],'string' , '�� �� �� Ӧ' , ...
'callback' , 'cjxy');
h_push5=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'backgroundcolor',[0.9 0.7 0.6],'position' ,[0.75,0.2,0.19,0.1], ...
'string' , '�� �� Ŀ ¼' ,'fontname','����','fontsize' ,13,'foregroundcolor','k', 'callback' , 'syxm' );
h3=axes('Position',[0.05,0.07,0.55,0.9]); % ���û���ͼ����λ�� 
set(h3,'Xlim',[0,1.6],'Ylim',[0,1.5]); % ������Ŀ̶ȷ�Χ 
set(h3,'DataAspectRatio',[1 1 1]); % ���ÿ̶ȱ��� 
set(h3,'ColorOrder',[0,0,0]); % ���û��ߵ���ѡ��ɫ 
set(h3,'Visible','off') % ��ȥ������

text(0.05,1.45,['\fontsize{12}���η���ϵͳ��ģ��Ϊ'],'color','blue');
xx7=0.36:0.01:0.62;yy7=1.33*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(0.18,1.33,'\Phi(s)= ','fontsize' ,11,'hor','left','color','blue'); 
text(0.38,1.28,'(s+k)^2+4 ','fontsize' ,11,'hor','left','color','blue');
text(0.39,1.37,'10(s+k) ','fontsize' ,11,'hor','left','color','blue'); 
text(0.05,1.14,['\fontsize{12}�弤��Ӧ���'],'color','blue');
text(0.18,1.02,['\fontsize{12}C(t)={\fontsize{12}L^{-1}}['],'color','blue');
xx7=0.45:0.01:0.7;yy7=1.02*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(0.45,0.97,'(s+k)^2+4 ','fontsize' ,11,'hor','left','color','blue');
text(0.47,1.07,'10(s+k) ','fontsize' ,11,'hor','left','color','blue');
text(0.7,1.02,'] ','fontsize' ,11,'hor','left','color','blue');
text(0.72,1.03,['\fontsize{12}={\fontsize{12}10e^{-kt}}cos(2t)'],'color','blue');

text(0.05,0.84,['\fontsize{12}��λ��Ծ��Ӧ���'],'color','blue');
text(0.18,0.73,['\fontsize{12}C(t)={\fontsize{12}L^{-1}}['],'color','blue');
xx7=0.45:0.01:0.77;yy7=0.72*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(0.45,0.68,'s[(s+k)^2+4] ','fontsize' ,11,'hor','left','color','blue');
text(0.5,0.76,'10(s+k) ','fontsize' ,11,'hor','left','color','blue');
text(0.8,0.72,'] ','fontsize' ,11,'hor','left','color','blue');
text(0.29,0.54,['\fontsize{12}='],'color','blue');
xx7=0.34:0.01:0.49;yy7=0.54*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(0.34,0.49,'k^2+4 ','fontsize' ,11,'hor','left','color','blue');
text(0.36,0.57,'10k ','fontsize' ,11,'hor','left','color','blue');
text(0.5,0.54,['\fontsize{12}[1-'],'color','blue');
xx7=0.59:0.01:0.8;yy7=0.54*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(0.59,0.49,'(1-\xi^2)^0^.^5','fontsize' ,11,'hor','left','color','blue');
text(0.65,0.57,'1 ','fontsize' ,11,'hor','left','color','blue');
text(0.81,0.54,['\fontsize{12}e^-^��^��^n^tsin(2t+��)+'],'color','blue');
xx7=1.26:0.01:1.51;yy7=0.54*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(1.26,0.49,'k(1-\xi^2)^0^.^5','fontsize' ,11,'hor','left','color','blue');
text(1.34,0.57,'��n ','fontsize' ,11,'hor','left','color','blue');
text(1.52,0.54,['\fontsize{12}e^-^��^��^n^tsin(2t)]'],'color','blue');
xx7=0.93:0.01:1.18;yy7=0.35*ones(size(xx7));line(xx7,yy7,'color','blue'); 
text(0.94,0.31,'(k^2+4)^0^.^5 ','fontsize' ,11,'hor','left','color','blue');
text(1.02,0.39,'k ','fontsize' ,11,'hor','left','color','blue');
text(0.18,0.36,['\fontsize{12}���У���n=(k^2+4)^0^.^5                  ��=                              ��=arccos��'],'color','blue');

text(0.165,0.18,['\fontsize{12}������弤��Ӧ���͡���λ��Ծ��Ӧ����ť���õ���Ӧ�ķ������ߣ�'],'color','blue');
text(0.02,0.07,['\fontsize{12}���������Ŀ¼����ť���ص�Ŀ¼���棬�Ա㿪ʼ�����ķ��档'],'color','blue');
text(0.162,-0.04,['\fontsize{12}������������˳��������ֱ�ӹرմ��ڡ�'],'color','blue');