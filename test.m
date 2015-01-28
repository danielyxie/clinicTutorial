T = 1;
Fs = 24000;
N = T * Fs;
t = -T : 1/Fs : T;
Fn = 800;
y = 10*cos(Fn * 2 * pi * t - 10);
x = 2*cos(Fn * 2 * pi * t);

[h, t] = impulse_response( x, y, Fs );

