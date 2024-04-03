clc;
clear all;
close all;
%Signal generating
A=1;
F=10;
ph=0;
t=0:0.001:1;
x=A*sin(2*pi*F*t+ph);
figure;
subplot(3,1,1)
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Signal Generating');
%Samplie
Fs=50;
Ts=1/Fs;
t1=0:Ts:1;
n=t1/Ts;
x1=A*sin(2*pi*F*t1+ph);
subplot(3,1,2)
stem(t1,x1)
xlabel('Time');
ylabel('Amplitude');
title('Sampaling Signal');
%Quantization
b=3;
L=2^b;
del=(max(x1)-min(x1))/(L-1);
for i=1:L
    l(i)=min(x1)+del*(i-1);
end
Yq=x1;
for i=1:length(l)-1
    temp=Yq>l(i) & Yq<l(i+1) & abs(Yq-l(i))<abs(Yq-l(i+1));
    Yq(temp)=l(i);
    temp=Yq>l(i) & Yq<l(i+1) & abs(Yq-l(i))>abs(Yq-l(i+1));
    Yq(temp)=l(i+1);
end
subplot(3,1,3)
stem(t1,Yq)  %stairs(t1,Yq)
xlabel('Time');
ylabel('Amplitude');
title('Quantization Signal');
%Encoding
for i=1:length(Yq)
    Ye(i)=round(Yq(i)-min(Yq)/del);
end
