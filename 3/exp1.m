clear all;
close all;
B = [2 -4];
A = [1 0.5 1];
Xi = [-1];
Yi = [0 1];
n = 0:1:19;
x = (0.8).^n;
Zi = filtic(B,A,Yi,Xi);
yb = filter(B,A,x,Zi);
y = filter(B,A,x);
stem(n,y);
xlabel('Ornek Sayisi');ylabel('Çikis y(n)');
        
