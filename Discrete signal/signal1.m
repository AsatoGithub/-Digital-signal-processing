n = -5:10;
delta = (n - 0)==0;
subplot(2,2,1);
stem(n,delta);
xlabel('n');
ylabel('\delta(n)');
grid;
% 単位ステップ
unitstep = (n-0)>=0;
subplot(2,2,2);
stem(n,unitstep);
xlabel('n');
ylabel('u_0(n)');
grid;
ramp = ((n-0)>=0).*(n-0);
subplot(2,2,3);
stem(n,ramp);
xlabel('n');
ylabel('r(n)');
grid;
% 指数関数
alpha = 0.75;
a = ((n-0)>=0).*alpha.^(n-0);
subplot(2,2,4);
stem(n,a);
xlabel('n');
ylabel('a(n)');
grid;