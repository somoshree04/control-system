% G(s)= 1/ (3s2+2s), 2nd order system

pkg load control

n=[1];
d=[3 2 0];
t=0:0.1:2;
rstep=1;
rramp=t;
rparab=(t.^2)/2;
sys=tf(n,d);
sys= feedback(sys, 1, -1);

%response
ystep=step(sys,t);
yramp=lsim(sys,rramp,t);
yparab=lsim(sys,rparab,t);

%plotting
subplot(1,3,1), plot(t, rstep, t ,ystep);
title('step response');
grid on;
subplot(1,3,2), plot(t, rramp, t ,yramp);
title('ramp response');
grid on;
subplot(1,3,3), plot(t, rparab, t ,yparab);
title('parabolic response');
grid on;
