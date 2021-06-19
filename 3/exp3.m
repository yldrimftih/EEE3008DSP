clear all;
close all;
clc;
% [h w]=freqz([1 -1],[1],1024,8000);
% subplot(2,1,1);
% plot(w,20*log10(abs(h)));
% ylabel('Genlik (dB)');
% xlabel('Frekans (Hz)');
% subplot(2,1,2);
% plot(w,angle(h)*180/pi);
% ylabel('Faz (Derece)');
% xlabel('Frekans (Hz)');

load train.mat;
filtreleme = filter([1 -1],[1],y);

% N=length(y); % Length of train
% Axk=abs(fft(y.*hamming(N)))/N; % Two-sided spectrum of speech
% Ayk=abs(fft(filtreleme.*hamming(N)))/N; % Two-sided spectrum of filtered train
% figure(2);
% k=0:1:N-1;
% f=k*Fs/N;
% subplot(2,1,1),plot(f,Axk);grid
% xlabel('Frekans (Hz)');
% ylabel('Genlik Spektrumu Ak')
% title('Orijinal Train.mat');
% subplot(2,1,2),plot(f,Ayk);grid
% ylabel('Genlik Spektrumu Ak')
% xlabel('Frekans (Hz)');
% title('Filtrelenmis Train.mat');
% 
% figure(3);
% n = 0:1:length(y)-1;
% T = 1/Fs;
% t = n*T;
% subplot(2,1,1);
% plot(t,y);
% xlabel('Zaman(sn)');
% title('Orijinal Sinyal');
% subplot(2,1,2);
% plot(t,filtreleme);
% xlabel('Zaman(sn)');
% title('Filtreden Geçen Train.mat')
% 
% N=length(y);
% f=[0:N/2]*Fs/N;
% Axk(2:N)=2*Axk(2:N); % Get one-sided spectrum of speech
% Ayk(2:N)=2*Ayk(2:N); % Get one-sided spectrum of filtered speech
% figure(4);
% subplot(2,1,1),plot(f,Axk(1:N/2+1));grid
% ylabel('Tek Yanli Genlik Spektrumu Ak')
% title('Orijinal Train.mat');
% subplot(2,1,2),plot(f,Ayk(1:N/2+1));grid
% ylabel('Tek Yanli Genlik Spektrumu Ak')
% xlabel('Frekans (Hz)');
% title('Filtrelenmis Train.mat');

N=length(y); % Length of train
Axk=abs(fft(y.*hamming(N)))/N; % Two-sided spectrum of speech
Ayk=abs(fft(filtreleme.*hamming(N)))/N; % Two-sided spectrum of filtered train
figure(2);
k=0:1:N-1;
f=k*Fs/N;
subplot(2,1,1),plot(f,Axk);grid
xlabel('Frekans (Hz)');
ylabel('Genlik Ak')
title('Hamming Penceresinden Gecmis Orijinal Train.mat');
subplot(2,1,2),plot(f,Ayk);grid
ylabel('Genlik Ak')
xlabel('Frekans (Hz)');
title('Hamming Penceresinden Gecmis Filtrelenmis Train.mat');

N=length(y);
f=[0:N/2]*Fs/N;
Axk(2:N)=2*Axk(2:N); % Get one-sided spectrum of speech
Ayk(2:N)=2*Ayk(2:N); % Get one-sided spectrum of filtered speech
figure(3);
subplot(2,1,1),plot(f,Axk(1:N/2+1));grid
ylabel('Genlik Ak')
title('Hamming Pencersinden Gecmis Tek Yanli Orijinal Genlik Spektrumu');
subplot(2,1,2),plot(f,Ayk(1:N/2+1));grid
ylabel('Genlik Ak')
xlabel('Frekans (Hz)');
title('Hamming Penceresinden Gecmis Tek Yanli, Filtrelenmis Genlik Spektrumu');
