T = 2*pi;
Fs = 24000;
N = T * Fs;
t = 0 : 1/Fs : T;
Fn = 800;
y = cos(10 * Fn * 2 * pi * t - 10);
x = cos(2 * Fn * 2 * pi * t);

[h, to] = impulse_response( x, y, Fs );

