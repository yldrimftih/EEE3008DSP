x = 5*randn([1,4096]);                  %a
subplot(2,1,1);
stem(x(1:50));                          %a
%--------------------------------------------
Ak = abs(fft(x)/length(x));             %b
fs = 8000;
k = 0:1:length(x)-1; % index of frequency
f = k*fs/length(x); % convert to Hz
subplot(2,1,2);
plot(f,Ak);                             %b
%---------------------------------------------
sound(x/max(abs(x)),8000);              %c

%creating white noise with Gauss Distribution 