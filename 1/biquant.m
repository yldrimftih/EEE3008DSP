function [I, pq]= biquant(NoBits,Xmin,Xmax,value)

L=2^NoBits;
delta=(Xmax-Xmin)/L;

I=round((value-Xmin)/delta);
%if (I>=L)
%I=I-1;
%end
I(I>=L)=L-1;
%if I<=0
%I=0;
%end
I(I<=0)=0;
pq=Xmin+I*delta;