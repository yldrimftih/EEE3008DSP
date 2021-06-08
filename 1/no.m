clear ;
close all;
fs = 8000; 
T = 1/fs;  
t = 0:T:6e-3;
x = 4.5*cos(2*pi*1000*t);
%plot(t,x);
%xlabel('Zaman(Saniye)');ylabel('Üretilen Sinyal X(t)')
bitsay = 4;%kuantalay?c? ç?k???n kod uzunlu?u
xmin = -5;
xmax = 5;
L = 2^bitsay;
delta = (xmax-xmin)/L;
boy = length(x);% giri? sinyalinin örnek say?s? 

 for k=1:boy
     I = round((x(k)-xmin)/delta);
     
 if (I>=boy)
     I = I-1; 
 end
 if(I<=0)
     I=0;
 end
 xq(k) = xmin + I*delta;
 end;
plot(t,x,t,xq)
qerr = xq - x;
qnoise = mean(abs(qerr).^2);
qnoisedb = 10*log10(qnoise);
SNR=10*log10(mean(abs(x).^2)/mean(abs(qerr).^2))
    