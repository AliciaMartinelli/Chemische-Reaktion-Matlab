clear; close all; clc

%b)
%% Die Variablen
tol=10^(-3);
k_a=(1/5);
k_e=(1/3);
h=2^(-12);
c_A0=5;
T=10;
c_desired=0.2;

%% Die Funktion

k_result = Bisektion(tol, k_a, k_e, h, c_A0, T, c_desired)

% c)
%% Die angepasste Funktion

[k_result, k_m_Array, c_A_T_Array] = Bisektion2(tol, k_a, k_e, h, c_A0, T, c_desired);

%% Der Plot
plot(k_m_Array, c_A_T_Array,'o', k_result, c_desired, '.')
title('Bisektion')
xlabel('k_m')
ylabel('c_A am Schluss')

