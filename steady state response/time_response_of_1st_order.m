
% time response of first-order system represented by the transfer function: G(s)=1/Ts+1   for three different values of the time constant: T = 2.5s, T = 1s, and T = 0s over a time interval of 0 to 15 s.

pkg load control

t=0:0.2:15;
n1=[1];
T1=2.5;
d1=[T1 1];
sys1=tf(n1,d1);
c1=step(sys1,t);
n2=[1];
T2=1;
d2=[T2 1];
sys2=tf(n2,d2);
c2=step(sys2,t);
n3=[1];
T3=0;
d3=[T3 1];
sys3=tf(n3,d3);
c3=step(sys3,t);
plot(t,c1,t,c2,t,c3);
title('time response of system');
xlabel('time in seconds');
ylabel('amplitude');
grid on;

legend('T = 2.5 s', 'T = 1.0 s', 'T = 0 s', 'Location', 'SouthEast');