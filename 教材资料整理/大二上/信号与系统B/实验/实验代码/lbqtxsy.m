% Copyright (c) 1997-2000 by TH Technology, Inc.
% All Rights Reserved.
% Date: 2006/01/02
clear
clf reset
set(gcf, 'unit' , 'normalized' ,'color',[0.7 0.7 0.9], 'position' ,[0.18,0.2,0.7,0.6]);
set(gcf, 'defaultuicontrolunits' , 'normalized' );
set(gcf, 'defaultuicontrolhorizontal' , 'left' );
str='�˲�����Ƶ���Ե��о�';
set(gcf, 'name' ,str, 'numbertitle' , 'off' ); % ��дͼ�δ���

h_text=uicontrol(gcf,'Style','frame',...
'unit' , 'normalized' , 'backgroundcolor',[0.4 0.4 0.5], 'position' ,[0.671,0.09,0.28,0.82], ...
'horizontal' , 'left' ,'fontsize' ,11);

h_text=uicontrol(gcf, 'style' , 'text' , ...
'unit' , 'normalized' , 'position' ,[0.7,0.79,0.22,0.07], ...
'horizontal' , 'left' ,'foregroundcolor','k','fontsize' ,11,'backgroundcolor',[0.3 0.8 0.6], 'string' ,{ '�˲�������' });
h_popup = uicontrol(gcf,'fontsize' ,10,'Style','popupmenu','Units','normalized','Position',[0.7 0.725 0.22 0.1],...
'BackgroundColor','white','foregroundcolor','k','String',{'��ͨ�˲���','��ͨ�˲���','��ͨ�˲���','�����˲���'});
h_text=uicontrol(gcf, 'style' , 'text' , ...
'unit' , 'normalized' , 'position' ,[0.7,0.6,0.22,0.07], ...
'horizontal' , 'left' ,'foregroundcolor','k','fontsize' ,11,'backgroundcolor',[0.3 0.8 0.6], 'string' ,{ '��ѡ�˲�����ֹ��Ƶ��' });
h_edit=uicontrol(gcf, 'style' , 'edit' , ...
'unit' , 'normalized' ,'fontsize' ,12,'foregroundcolor','k','backgroundcolor','w', 'position' ,[0.7,0.56,0.22,0.07], ...
'horizontal' , 'left' , ...
'callback' ,[ ...
'Wp=str2num(get(gcbo,''string''));']);

h_push4=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' ,'fontname','����','fontsize',12 ,'foregroundcolor','k', 'backgroundcolor',[0.3 0.8 0.6],'position' ,[0.7,0.34,0.22,0.09], ...
'string' , '��   ʼ   ��   ��' ,'callback' , 'lbqtxsy1(h_popup,Wp)');

h_push4=uicontrol(gcf, 'style' , 'push' , ...
'unit' , 'normalized' ,'fontname','����','fontsize',12 ,'foregroundcolor','k', 'backgroundcolor',[0.9 0.7 0.6],'position' ,[0.7,0.14,0.22,0.09], ...
'string' , '��   ��   Ŀ   ¼' ,'callback' , 'syxm');

h3=axes('Position',[-0.02,0.09,0.55,0.9]); % ���û���ͼ����λ�� 
set(h3,'Xlim',[0,1.2],'Ylim',[0,0.7]); % ������Ŀ̶ȷ�Χ 
set(h3,'DataAspectRatio',[1 1 1]); % ���ÿ̶ȱ��� 
set(h3,'ColorOrder',[0,0,0]); % ���û��ߵ���ѡ��ɫ 
set(h3,'Visible','off'); % ��ȥ������
text(0.3,0.9,['\fontsize{11}�˲����Ĺ�������һ��Ƶ�ʷ�Χ�ڵ��ź�ͨ�������ƻ�'],'color','blue');
text(0.2,0.83,['\fontsize{11}����˥��Ƶ�ʷ�Χ������źš�����Ƶ�ʷ�Χ�ɽ����Ϊ��'],'color','blue');
text(0.2,0.76,['\fontsize{11}ͨ����ͨ����ͨ����������˲�����'],'color','blue');
text(0.2,0.69,['\fontsize{11}        (1)   �����ͨ�˲��������ɱ�ʾΪ��'],'color','blue');
sint='{\fontsize{11}��_{\fontsize{8}0          ��>��c}^{Ke^-^j^��^t    ��<��c}}';
text(0.2,0.61,['\fontsize{11}                                     H(j��)=',sint],'color','blue') 
text(0.2,0.53,['\fontsize{11}        (2)   �����ͨ�˲��������ɱ�ʾΪ��'],'color','blue');
sint='{\fontsize{11}��_{\fontsize{8}0          ��<��c}^{Ke^-^j^��^t    ��>��c}}';
text(0.2,0.45,['\fontsize{11}                                     H(j��)=',sint],'color','blue')
text(0.2,0.37,['\fontsize{11}        (3)   �����ͨ�˲��������ɱ�ʾΪ��'],'color','blue');
sint='{\fontsize{11}��_{\fontsize{8}0          ��<��c1,��>��c2}^{Ke^-^j^��^t    ��c1<��<��c2}}';
text(0.2,0.29,['\fontsize{11}                                     H(j��)=',sint],'color','blue')
text(0.2,0.21,['\fontsize{11}        (4)   ��������˲��������ɱ�ʾΪ��'],'color','blue');
sint='{\fontsize{11}��_{\fontsize{8}0          ��c1<��<��c2}^{Ke^-^j^��^t    ��<��c1,��>��c2}}';
text(0.2,0.13,['\fontsize{11}                                     H(j��)=',sint],'color','blue')
text(0.2,0.05,['\fontsize{11}        ʽ�У���cΪ��ֹƵ�ʣ��Ҧ�c1<��c2��'],'color','blue');
text(0.2,-0.02,['\fontsize{11}                    tΪ�ӳ�ʱ�䡣'],'color','blue');
text(0.3,-0.09,['\fontsize{11}���Ҳ����������ѡ���˲��������ͣ������ı�������'],'color','blue');
text(0.2,-0.16,['\fontsize{11}����Ӧ�Ľ�ֹƵ�ʣ�Ȼ��������ʼ���桱��ť�����ɵõ���'],'color','blue');
text(0.2,-0.23,['\fontsize{11}ͬ�˲�����Ƶ���������ߡ�'],'color','blue');
text(0.3,-0.3,['\fontsize{11}������������˳��������ֱ�ӹرմ��ڡ�'],'color','blue');