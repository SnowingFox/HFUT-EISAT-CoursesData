% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
str= ' �����������źŵķֽ���ϳ� ' ;
set(gcf, 'name' ,str,'unit' , 'normalized' , 'color',[0.7 0.7 0.9],'numbertitle' , 'off','position' ,[0.18,0.2,0.65,0.5] ); % ��дͼ�δ���

h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.72,0.08,0.25,0.84], ...
'horizontal' , 'left' ,'fontsize' ,11);

h_push1=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'backgroundcolor',[0.3 0.8 0.6],'position' ,[0.75,0.35,0.19,0.1], ...
'foregroundcolor','k','fontname','����','fontsize' ,13,'string' , 'ȫ ��' , ...
'callback' , 'xhfjhc5');
h_push2=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'position' ,[0.75,0.55,0.19,0.1], ...
'foregroundcolor','k','fontname','����','fontsize' ,13,'backgroundcolor',[0.3 0.8 0.6],'string' , '�� �� ��' , ...
'callback' , 'xhfjhc3');
h_push3=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'position' ,[0.75,0.75,0.19,0.1], ...
'foregroundcolor','k','fontname','����','fontsize' ,13,'backgroundcolor',[0.3 0.8 0.6],'string' , '��  ��' , ...
'callback' , 'xhfjhc1');
h_push5=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' , 'backgroundcolor',[0.9 0.7 0.6],'position' ,[0.75,0.15,0.19,0.1], ...
'string' , '�� �� Ŀ ¼' ,'fontname','����','fontsize' ,13,'foregroundcolor','k', 'callback' , 'syxm' );
h3=axes('Position',[0.05,0.07,0.55,0.9]); % ���û���ͼ����λ�� 
set(h3,'Xlim',[0,1.6],'Ylim',[0,1.5]); % ������Ŀ̶ȷ�Χ 
set(h3,'DataAspectRatio',[1 1 1]); % ���ÿ̶ȱ��� 
set(h3,'ColorOrder',[0,0,0]); % ���û��ߵ���ѡ��ɫ 
set(h3,'Visible','off') % ��ȥ������

text(0.14,1.35,['\fontsize{12}�κε��źŶ����ɸ��ֲ�ͬƵ�ʡ���ֵ�ͳ�������Ҳ�'],'color','blue');
text(0.0,1.24,['\fontsize{12}���Ӷ��ɵģ�һ�����������ں���������һϵ��Ƶ�ʳ�����'],'color','blue');
text(0.0,1.13,['\fontsize{12}�������Һ�������ʾ������������Ҿ�����ͬƵ�ʵĳɷֳ�'],'color','blue');
text(0.0,1.02,['\fontsize{12}Ϊ������һ��г���������ɷ��������Ƶ��Ϊ����Ƶ�ʵ�2��'],'color','blue');
text(0.0,0.91,['\fontsize{12}3��4��...��n�ȱ����ֱ�ƶ��Ρ����Ρ��ĴΡ�...��n��г����'],'color','blue');
text(0.0,0.80,['\fontsize{12}����Ƚ���г�����������Ӷ���С��ֱ������С��'],'color','blue');
text(0.14,0.69,['\fontsize{12}��ͬƵ�ʵ�г�����Ժϳ�һ�����������ڲ�����������'],'color','blue');
text(0.0,0.58,['\fontsize{12}һ�����������ڲ�Ҳ���Էֽ�Ϊ���޸���ͬƵ�ʵ�г���ɷ֡�'],'color','blue');
text(0.0,0.47,['\fontsize{12}����Ҳ�İ�ť���ɷֱ�������ֲ��εķ�����棬�۲��'],'color','blue');
text(0.0,0.36,['\fontsize{12}������г���ĺϳɡ�'],'color','blue');
text(0.14,0.25,['\fontsize{12}���������Ŀ¼����ť���ص�Ŀ¼���棬�Ա㿪ʼ������'],'color','blue');
text(0.0,0.14,['\fontsize{12}��.������������˳��������ֱ�ӹرմ��ڡ�'],'color','blue');