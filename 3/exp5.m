%clear all;
%close all;
clc;
load train.mat;




N=length(y);
fs = 8000;
FilteredSignal = filter(Num,[1],y);
FilteredSignalTransform = fft(FilteredSignal)/N;

yfft= fft(y);
k=0:1:N-1;
f=k*fs/N;

subplot(2,1,1);
plot(f,abs(yfft)/N);
title('Orijinal Train.mat');
xlabel('Frekans (Hz)');
ylabel('Genlik Ak');

subplot(2,1,2);
plot(f,abs(FilteredSignalTransform)/N);
title('Filtreleme ve Dikdortgen Pencere Sonrasi Train.mat');
xlabel('Frekans (Hz)');
ylabel('Genlik Ak');
