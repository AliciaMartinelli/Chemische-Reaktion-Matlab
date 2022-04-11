clear; close all; clc
%d)
%% Die Variablen
k_1=1;
T=10;
c_A0=5;

%% Der For Loop
for k=1:6
    h(k)=2^(-(k+2));
    [t,c_A] = expliziter_Euler(k_1, h(k), c_A0, T);
    err(k)=max(abs(c_A-c_A0*exp(-k_1*t)));
end

%% Der Plot
figure
loglog(h,err,'-o',h,h,'--')
title('error explicit Euler, A1d')
xlabel('h')
ylabel('error')
legend({'error','rate'},'Location','northwest')