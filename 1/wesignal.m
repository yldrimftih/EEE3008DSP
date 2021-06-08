clear ;
close all;
fs = 8000; 
xmin = -1;
xmax = 1;
T = 1/fs;  
load('WE.dat');
x = WE/max(abs(WE));
boy = length(x);%kuantalay?c? ç?k???n kod uzunlu?u
bitsay = 8;
%subplot(3,1,1);
t = (0:1:boy-1)*T;
%plot(t,x);
xlabel('Kuantalanmamis Sinyal');
L = 2^bitsay;
delta = (xmax-xmin)/L; 

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
subplot(3,1,2);
plot(t,xq,'color','r');
xlabel('Kuantalanmis Sinyal');
qerr = xq- x;
subplot(3,1,1);
plot(t,qerr,'g');
xlabel('Kuantalanma Hatasi');
qnoise = mean(abs(qerr).^2);
qnoisedb = 10*log10(qnoise);
SNR=10*log10(mean(abs(x).^2)/mean(abs(qerr).^2))
    


