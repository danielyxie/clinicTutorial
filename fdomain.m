function [X,f]=fdomain(x,Fs)
% FDOMAIN Function to compute the Fourier coefficients from vector x
%   and the corresponding frequencies (two-sided)
% usage:
%   [X,f]=fdomain(x,fs)
%         x=vector of time domain samples
%        fs=sampling rate (in Hz)
%         X=vector of complex Fourier coefficients
%         f=vector of corresponding frequencies (two-sided)

N=length(x);

if mod(N,2)==0
    k=-N/2:N/2-1; % N even
else
    k=-(N-1)/2:(N-1)/2; % N odd
end

T=N/Fs;
f=k/T;
X=fft(x)/N; % make up for the lack of 1/N in Matlab FFT
X=fftshift(X);