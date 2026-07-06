
% calculate the transient response specifications—namely Rise Time tr, Peak Time tp, Settling Time ts using a 2% criterion, and Maximum Percentage Overshoot Mp for a second-order prototype control system represented by the transfer function: G(s)= 25/(s2+6s+25)

pkg load control

n=[25];
d=[1 6 25];

wn=5;
z= 6/(wn*2);

theta=acos(z);
wd=wn *sqrt(1-z^2);

rise_time=(pi-theta)/wd;
peak_time=pi/wd;
settling_time=4/(z*wn);
maximum_overshoot=exp((-z*pi)/sqrt(1-z^2));

fprintf('second time response\n');
fprintf('tr: %.4f\n', rise_time);
fprintf('tp: %.4f\n', peak_time);
fprintf('ts: %.4f\n', settling_time);
fprintf('Mp: %.2f\n', maximum_overshoot');

%{
second time response
tr: 0.5536
tp: 0.7854
ts: 1.3333
Mp: 0.09
}%