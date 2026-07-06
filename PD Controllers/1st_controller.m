
%{
find step response of PD controller with kp= 300 & kd=10 and following tf= c(S)/R(S)= kds+kp/ s2+(10+kd)s+(20+kp)
%}

pkg load control  % crucial for Octave to recognize 'tf' and 'step'...

kp=300;
kd=10;
n=[kd kp];
d=[1 10+kd 20+kp];

sys =tf(n,d);

t=0:0.1:2;

step(sys,t);
grid on;


saveas(gcf, 'step_response_plot.png');

%{
for matlab:

kp=300;
kd=10;
n=[kd kp];
d=[1 10+kd 20+kp];
t=0:0.1:2;
step(n,d,t)
%}


