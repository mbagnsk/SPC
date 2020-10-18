clear; close all;
a=-4;
b=4;
p=[1 a b];
delta=a*a-4*b;
s_roots=roots(p);
out=sim('labsim');
t=out.tout;
simout=out.simout;
figure, hold on, grid on;
plot(t,simout);
xlabel('t');
ylabel('\lambda (t)');

figure, hold on, grid on;
plot(real(s_roots), imag(s_roots), 'x');
yline(0,':');
xline(0,':');
axis([-5 5 -5 5]);
xlabel('Re(z)');
ylabel('Im(z)');