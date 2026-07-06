
% time response of a second-order system with a natural undamped frequency of wn = 1 rad/s
% Compare the response curves on a single plot by varying the damping ratio (zeta)  across the following six values: 0.2,0.4, 0.6, 0.8, 1.0,1.2. Simulate the system over a time interval of 0 to 15 s. Clearly label each curve to illustrate the behavior of underdamped, critically damped, and overdamped systems.

pkg load control

t=0:0.1:15;
wn=1;

z=0.2;
sys0=tf(wn^2 ,[1,2*wn*z, wn^2]);
y0=step(sys0,t);

z=0.4;
sys1=tf(wn^2, [1, 2*wn*z , wn*2]);
y1=step(sys1,t);

z=0.6;
sys2=tf(wn^2, [1, 2*wn*z , wn*2]);
y2=step(sys2,t);

z=0.8;
sys3=tf(wn^2, [1, 2*wn*z , wn*2]);
y3=step(sys3,t);

z=1;
sys4=tf(wn^2, [1, 2*wn*z , wn*2]);
y4=step(sys4,t);

z=1.2;
sys5=tf(wn^2, [1, 2*wn*z , wn*2]);
y5=step(sys5,t);

plot(t,y0,t,y1,t,y2,t,y3,t,y4,t,y5);
title('Step Response of a 2nd Order System');
xlabel('Time in seconds');
ylabel('Amplitude');

grid on;

legend('\zeta = 0.2', '\zeta = 0.4', '\zeta = 0.6', '\zeta = 0.8', '\zeta = 1.0', '\zeta = 1.2', 'Location', 'SouthEast');





