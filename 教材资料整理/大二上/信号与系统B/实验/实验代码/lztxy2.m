selected_cmd = get(h_popup,'Value');
% Make the GUI axes current
axes(h_axes)
% Call appropriate command based on what user selected
switch selected_cmd
case 1 % ������Ӧ
     ts=0;te=15;dt=0.01;
     sys=tf([1],[1 0.709]);
     t=ts:dt:te;
     f =sin(t); 
     y=lsim(sys,f,t);
     plot(t,f,t,y,'r');xlabel('t(s)');ylabel('y(t)');legend('�����ź�','����ź�');grid on;
case 2 % ������Ӧ
    ts=0;te=15;dt=0.01;
    sys=tf([1],[1 0.709]);
    t=ts:dt:te;
    f =cos(t); 
    y=lsim(sys,f,t);
    plot(t,f,t,y,'r');xlabel('t(s)');ylabel('y(t)');legend('�����ź�','����ź�');grid on;
case 3 %б����Ӧ
     ts=0;te=15;dt=0.01;
    sys=tf([1],[1 0.709]);
    t=ts:dt:te;
    f =t ;
    y=lsim(sys,f,t);
    plot(t,f,t,y,'r');xlabel('t(s)');ylabel('y(t)');legend('�����ź�','����ź�');grid on;
case 4 % ������Ӧ
    ts=0;te=15;dt=0.01;
    t=ts:dt:te;
    y=impulse(1,[1 0.709],t);
    plot(t,y,'r');xlabel('t(s)');ylabel('y(t)');grid on;
end