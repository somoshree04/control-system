
pkg load control

kp=30;
ki=70;

n=[kp ki];
d=[1 10 20+kp ki];

t=0:0.01:2;

step(n,d,t);
grid on;

%{
for matlab

kp=30;
ki=70;

n=[kp ki];
d=[1 10 20+kp ki];

t=0:0.01:2;

step(n,d,t);

%}