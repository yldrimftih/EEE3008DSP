[h w]=freqz([1],[1 -0.5],1024);
subplot(2,1,1);
plot(w,20*log10(abs(h)));
ylabel('Genlik (dB)');
xlabel('Frekans (Normalize)');
subplot(2,1,2);
plot(w,angle(h)*180/pi);
ylabel('Faz (Radyan)');
xlabel('Frekans (Normalize)');
%figure(2);
%plot(w,20*log10(abs(h)));       %genlik tepkesi

figure(2);
[h w]=freqz([1 -0.5],[1],1024);
subplot(2,1,1);
plot(w,20*log10(abs(h)));
ylabel('Genlik (dB)');
xlabel('Frekans (Normalize)');
subplot(2,1,2);
plot(w,angle(h)*180/pi);
ylabel('Faz (Radyan)');
xlabel('Frekans (Normalize)');

figure(3);
[h w]=freqz([0.5 0 -0.32],[1 -0.5 0.25],1024);
subplot(2,1,1);
plot(w,20*log10(abs(h)));
ylabel('Genlik (dB)');
xlabel('Frekans (Normalize)');
subplot(2,1,2);
plot(w,angle(h)*180/pi);
ylabel('Faz (Radyan)');
xlabel('Frekans (Normalize)');

