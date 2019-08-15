clear;

clc
close all

load('StaggeredGridFDTra3.mat')
figure;plot(seis_recordTxz(:,400))
tt=seis_recordTxz;

load('StaggeredGridFD3.mat')
hold  on;plot(seis_recordTxz(:,400),'k')


load('KSpaceLayer3.mat')
hold on;plot(sign(real(seis_recordTxz(:,400))) .*sqrt(real(seis_recordTxz(:,400)).^2+ imag(seis_recordTxz(:,400)).^2)   ,'r')

legend('Tra FD scheme','Non-balanced FD scheme','K space');
title('')
grid on