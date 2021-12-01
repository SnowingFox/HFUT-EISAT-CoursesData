function z = xhfjhc2(h_popup,h_axes); 
val = get(h_popup,'Value');
% Make the GUI axes current
t=-4:pi/1000:4;
% Call appropriate command based on what user selected
    if val == 1
        x1=square(pi*t);x2=4*sin(pi*t)/pi;
        axes(h_axes);plot(t,x1,'b',t,x2,'r');grid on;xlabel('t/s');ylabel('���ȣ�V��');axis([0 3 -1.5 1.5]);legend('ԭ�ź�','�ϳ��ź�');
    elseif val == 2
        x1=square(pi*t);x2=4*(sin(pi*t)+sin(3*pi*t)/3)/pi;
        axes(h_axes);plot(t,x1,'b',t,x2,'r');grid on;xlabel('t/s');ylabel('���ȣ�V��');axis([0 3 -1.5 1.5]);legend('ԭ�ź�','�ϳ��ź�');  
    elseif val == 3
        x1=square(pi*t);x2=4*(sin(pi*t)+sin(3*pi*t)/3+sin(5*pi*t)/5)/pi;
        axes(h_axes);plot(t,x1,'b',t,x2,'r');grid on;xlabel('t/s');ylabel('���ȣ�V��');axis([0 3 -1.5 1.5]);legend('ԭ�ź�','�ϳ��ź�');    
    elseif val == 4
        x1=square(pi*t);x2=4*(sin(pi*t)+sin(3*pi*t)/3+sin(5*pi*t)/5+sin(7*pi*t)/7)/pi;
        axes(h_axes);plot(t,x1,'b',t,x2,'r');grid on;xlabel('t/s');ylabel('���ȣ�V��');axis([0 3 -1.5 1.5]);legend('ԭ�ź�','�ϳ��ź�');
    end