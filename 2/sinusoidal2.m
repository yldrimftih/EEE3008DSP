clear all;                              %a
t = 0:(1/8000):0.5;
x1 = 5*cos(2*pi*500*t);
x2 = 5*cos(2*pi*1200*t + 0.25*pi);
x3 = 5*cos(2*pi*1800*t + 0.5*pi);

subplot(3,1,1);
plot(t,x1);
xlabel('X1 = 5*cos(2*pi*500*t)');
axis([0 0.01 -6 6]);
subplot(3,1,2);
plot(t,x2);
xlabel('X2 = 5*cos(2*pi*1200*t + 0.25*pi)');
axis([0 0.01 -6 6]);
subplot(3,1,3);
plot(t,x3);
xlabel('X3 = 5*cos(2*pi*1800*t + 0.5*pi)');
axis([0 0.01 -6 6]);                    %a
%-------------------------------------------
x = x1 + x2 + x3;                       %b
figure;
subplot(2,1,1);
plot(t,x);
axis([0 0.01 -6 6]);                    %b
%-------------------------------------------
Ak = abs(fft(x)/length(x));             %c
fs = 8000;
k = 0:1:length(x)-1;
f=k*fs/length(x);
subplot(2,1,2);
plot(f,Ak);                             %c
xlabel('X(f) = X1(f) + X2(f) + X3(f)');
%-------------------------------------------
%sound(x/max(abs(x1)),8000);             %d