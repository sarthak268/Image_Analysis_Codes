x = [1 -1 0 0];
y = [1 2 0 0];
a = conv(x,y);
b = fft(x);
c = fft(y);
d = b.*c;
ifft(d)
