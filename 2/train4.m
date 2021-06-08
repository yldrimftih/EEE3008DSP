clear all;                              %a
close all;
load train.mat;
x = y;
n = 0:1:length(x)-1;   %indexs of time
T = 1/Fs;
t = n*T;               %values of time
%subplot(2,1,1);
%plot(t,x);                              %a
%-----------------------------------------
Ak = abs(fft(x))/length(x);             %b
k = 0:1:length(x)-1;
f = k*Fs/length(Ak);
subplot(2,1,1);
plot(f,Ak);                             %b
%-----------------------------------------
sound(x/max(abs(x)),Fs);
