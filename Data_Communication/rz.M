clc;
clear all;
close all;

bits =[1 0 1 0 0 0 1 1 0];
bitrate = 1;

figure;
[t,s]=urz(bits,bitrate);
plot(t,s,'LineWidth',3);
axis([0 t(end) -0.1 1.1])
grid on;
title(['Unipolar Rz: [' num2str(bits) ']']);






function [t,x]=urz(bits, bitrate)
T=length(bits)/bitrate;
n=200;
N=n*length(bits);
dt=T/N;
t=0:dt:T;
x=zeros(1,length(t));

for i = 0:length(bits)-1
   if bits(i+1) == 1
       x(i*n+1:(i+0.5)*n) =1;
       x((i+0.5)*n+1:(i+1)*n)=0;
   else
       x(i*n+1:(i+1)*n)=0;
   end
end
end
