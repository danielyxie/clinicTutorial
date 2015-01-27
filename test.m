T = 1;
Fs = 24000;
N = T * Fs;
t = 0 : 1/Fs : T;
Fn = 800;
y = cos(10 * Fn * 2 * pi * t - 10);
x = cos(2 * Fn * 2 * pi * t);

impulse_response( x, y, Fs );

