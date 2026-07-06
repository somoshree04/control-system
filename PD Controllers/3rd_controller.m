
pkg load control

kp=350;
ki=300;
kd=50;

n=[kd kp ki];
d=[1 10+kd 20+kp ki];

sys= tf(n,d);

t=0:0.1:2;

step(sys,t);

grid on;