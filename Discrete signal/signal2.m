% ô‚İ‚İ‰‰Z
h = [1,0,0]
x = [1,1,1,1,1]
y = myconv(h,x)
figure(1)
subplot(2,1,1)
stem(x)
axis([1 7 -6 6])
xlabel('x')
grid
subplot(2,1,2)
stem(y)
axis([1 7 -6 6])
xlabel('y')
grid