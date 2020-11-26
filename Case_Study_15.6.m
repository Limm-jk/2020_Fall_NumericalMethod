# 201602057 Junkyu-lim

clc; 
format short g
U=[0.5 2 10 0.5 2 10 0.5 2 10]';
H=[0.15 0.15 0.15 0.3 0.3 0.3 0.5 0.5 0.5]';
KL=[0.48 3.9 57 0.85 5 77 0.8 9 92]';
logU=log10(U);logH=log10(H);logKL=log10(KL);
Z=[ones(size(logKL)) logU logH];
a=(Z'*Z)\(Z'*logKL)

Sr=sum((logKL-Z*a).^2)
r2=1-Sr/sum((logKL-mean(logKL)).^2)
syx=sqrt(Sr/(length(logKL)-length(a)))

clf
KLpred=10^a(1)*U.^a(2).*H.^a(3);
KLmin=min(KL);
KLmax=max(KL);
dKL=(KLmax-KLmin)/100;
KLmod=[KLmin:dKL:KLmax];
subplot(1,2,1)
loglog(KLpred,KL,'ko',KLmod,KLmod,'k-')
axis square,title('(a) log-log plot')
legend('model prediction','1:1 line','Location','NorthWest')
xlabel('log(K_L) measured'),ylabel('log(K_L) predicted')
subplot(1,2,2)
plot(KLpred,KL,'ko',KLmod,KLmod,'k-')
axis square,title('(b) untransformed plot')
legend('model prediction','1:1 line','Location','NorthWest')
xlabel('K_L measured'),ylabel('K_L predicted')