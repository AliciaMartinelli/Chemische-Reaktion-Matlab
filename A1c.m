clear; close all; clc

%c)
%% Die Variablen
k_1=0.5;
T=10;
h=2^(-4);
c_A0=5;

%% Die Funktion
[t,c_A] = expliziter_Euler(k_1, h, c_A0, T);

%% Der Plot
plot(t,c_A)
title('Evolution of concentration, A1c')
xlabel('time')
ylabel('concentration')