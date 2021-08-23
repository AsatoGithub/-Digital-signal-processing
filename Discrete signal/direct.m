function [num,den,N] = direct(wc,ws,As)
N = ceil(0.5*log10(10^(As/10)-1) / log10(tan(ws/2)/tan(wc/2)));
zr = -ones(N, 1);
k = 0:2*N-1;
if mod(N,2) == 0
qk = tan(wc/2)*exp(1i*(2*k+1)*pi/(2*N));
else 
qk = tan(wc/2):exp(1i*k*pi/N);
end
pk = ((1+qk)./(1-qk))';
pl = pk(abs(pk)<1);
K = abs(prod(1-pl)/2^N);
[num,den] = zp2tf(zr,pl,K);
