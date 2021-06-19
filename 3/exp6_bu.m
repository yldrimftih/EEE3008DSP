fs=8000; % Sampling rate
T=1/fs; % Sampling period
v=sqrt(0.1)*randn(1,250); % Generate Gaussian random noise
n=0:1:249; % Indexes
x=1.4141*sin(2*pi*500*n*T)+v; % Generate 500-Hz plus noise


N=length(x);
k=0:1:N-1;
f=k*fs/N;
Axk=abs(fft(x))/N;Axk(1)=Axk(1)/2; % orijinal sinyal frekans uzay?nda
subplot(2,1,1)
plot(f,Axk);
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)| ');grid;
title('Orijinal Sinyalin Spektrumu')

N=length(x);
k=0:1:N-1;
f=k*fs/N;
filtreleme = filter(Num,[1],x);
y = abs(fft(filtreleme))/N; % filtrelenmi? hali
subplot(2,1,2)
plot(f,y);
title('Filtrelenmis ve Hamming Penceresinden Gecmis Sinyalin Spektrumu');
xlabel('Frekans (Hz)'); ylabel('Genlik |X(f)| ');grid;

figure(2);
subplot(2,1,1)
n = 0:1:length(x)-1;
T = 1/fs;
t = n*T;
plot(t,x);
title('Orijinal Sinyal Zaman Uzayinda');
xlabel('Zaman (sn)'); ylabel('Genlik |X(f)| ');grid;

n = 0:1:length(x)-1;
T = 1/fs;
t = n*T;
subplot(2,1,2);
plot(t,filtreleme);
title('Filtrelenmis Sinyal Zaman Uzayinda');
xlabel('Zaman (sn)'); ylabel('Genlik |X(f)| ');grid;
