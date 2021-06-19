clear 
fs=16000; % ornekleme frekans?
fc1=13000;
f=3000;
t=1/fs;
fT=f*t;
zayiflama1 = 2;%db
zayiflama2 = 33;%db
gain=abs(sin(fT*pi)/(fT*pi));
gaindB = 20*log10(gain);
zayiflama1 = zayiflama1 + gaindB;
fT2=fc1*t;
gain2=abs(sin(fT2*pi)/(fT2*pi));
gaindB2 = 20*log10(gain2);
zayiflama2 = zayiflama2 + gaindB2;
n=0.5*log(((10^(zayiflama2/10))-1)/((10^(zayiflama1/10))-1))/log(fc1/f);
derece =n;
