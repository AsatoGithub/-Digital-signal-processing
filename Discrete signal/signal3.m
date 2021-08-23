
wp = 0.2 * pi;
ws = 0.3 * pi ;
trwidth = ws - wp; 
N = ceil(6.6*pi/trwidth) + 1; 
win = hamming(N);
wc = (wp + ws) / 2;
h = fir1(N-1, wc/pi, win);
n = -(N-1)/2:(N-1)/2; 
figure(1)
stem(n,h);
axis([-(N-1)/2 (N-1)/2 -0.1 0.3]);
grid;
xlabel('Time n');
ylabel('h(n)');
dw = 0.001;
w = 0:dw:pi; 
H = freqz(h, 1, w);
maxH = max(abs(H));
dBH = 20 * log10(abs(H)/maxH);
figure(2)
plot(w, dBH);
axis([0 pi -80 5]);
grid;
xlabel('Frequency \omega [rad]');
ylabel('|H(e^{j\omega})| [dB]');
Rp = - min(dBH(1:ceil(wp/dw)+1));
As = - max(dBH(ceil(ws/dw)+1:length(w)));