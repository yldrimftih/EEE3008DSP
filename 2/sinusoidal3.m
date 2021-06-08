clear all;                              %a
close all;
t = 0:(1/8000):0.5;
x1 = 5*cos(2*pi*500*t);
x2 = 5*cos(2*pi*1200*t + 0.25*pi);
%figure;
%subplot(4,1,1);
%plot(t,x1);
%xlabel('x1(t) = 5*cos(2*pi*500t)');
axis([0 0.01 -6 6]);
%%figure;
%subplot(4,1,2);
%plot(t,x2);
xlabel('x2(t) = 5*cos(2*pi*1200t + 0.25*pi)');
axis([0 0.01 -6 6]);
x1max = max(x1);
x2max = max(x2);
x1rms = sqrt(mean(x1.*x1));
x2rms = sqrt(mean(x2.*x2));             %a
%----------------------------------------------------
y= x1.*x2;                              %b
subplot(4,1,1);
plot(t,y);
xlabel('y(t) = x1(t)*x2(t)');
axis([0 0.01 -6 7]);
ymax = max(y);                          %b
%----------------------------------------------------
Ak = abs(fft(y))/length(y);             %c  to draw spectrum
fs = 8000;
k = 0:1:length(y)-1;            % the k is the index of frequency
f = k*fs/length(y);             %to convert into Hz
subplot(4,1,2);
plot(f,Ak);                             %c
xlabel('Y(f)');
%----------------------------------------------------
pause                                   %d
sound(x1/max(abs(x1)),8000);
pause
sound(x2/max(abs(x2)),8000);
pause
sound(y/max(abs(y)),8000);              %d  press enter to play the sound
%----------------------------------------------------

