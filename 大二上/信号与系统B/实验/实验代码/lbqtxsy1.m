function lbqtxsy1(h_popup,Wp)
selected_cmd = get(h_popup,'Value');
% Make the GUI axes current
% Call appropriate command based on what user selected
switch selected_cmd
case 1 % ��ͨ�˲���
     [b,a]=butter(2,Wp,'low','s');[c,d]=butter(4,Wp,'s');figure(4);bode(b,a);hold on;bode(c,d);legend('����','�Ľ�');grid on;title('���ס��Ľװ�����˹��ͨ�˲���');hold off;clear;
case 2 % ��ͨ�˲���
    [b,a]=butter(2,Wp,'high','s');[c,d]=butter(4,Wp,'high','s');figure(4);bode(b,a);hold on;bode(c,d);legend('����','�Ľ�');grid on;title('���ס��Ľװ�����˹��ͨ�˲���');hold off;clear;
case 3 %��ͨ�˲���
    [b,a]=butter(2,Wp,'bandpass','s');[c,d]=butter(4,Wp,'bandpass','s');figure(4);bode(b,a);hold on;bode(c,d);legend('����','�Ľ�');grid on;title('���ס��Ľװ�����˹��ͨ�˲���');hold off;clear;
case 4 % �����˲���
    [b,a]=butter(2,Wp,'stop','s');[c,d]=butter(4,Wp,'stop','s');figure(4);bode(b,a);hold on;bode(c,d);legend('����','�Ľ�');grid on;title('���ס��Ľװ�����˹�����˲���');hold off;clear;
end