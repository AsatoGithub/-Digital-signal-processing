wc = 0.25*pi;
ws = 0.75*pi; 
As = 30; 
[b,a,N] = direct(wc,ws,As);
zr = roots(b)
pl = roots(a) 
figure(1)
zplane(b,a); 
legend('zeros','poles');
figure(2)
w = 0:0.01:pi;
H = freqz(b,a,w);
plot(w,20*log10(abs(H)));
axis([0 pi -60 5]);
grid;
xlabel('Frequency \omega [rad]');
ylabel('|H(e^{j\omega})| [dB]');