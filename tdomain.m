function [x,t]=tdomain(X,Fs)
% TDOMAIN computes the real time waveform vector x corresponding to the
%         Fourier coefficients (two-sided)
% usage: [x,t]=tdomain(X,Fs)

N=length(X);
n=0:N-1;
t=n/Fs;
X=ifftshift(X);
x=real(N*ifft(X)); % make up for the 1/N in Matlab IFFT