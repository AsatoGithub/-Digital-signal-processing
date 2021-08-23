function [y] = myconv(h,x)
hlength = length(h);
xlength = length(x);
hzero = [h zeros(1,xlength-1)];
xzero = [x zeros(1,hlength-1)];
ylength = hlength + xlength - 1;
y = zeros(1,ylength);
for n = 0:ylength-1
for k = 0:n
y(n+1) = y(n+1) + hzero(k+1) * xzero(n-k+1);
end
end