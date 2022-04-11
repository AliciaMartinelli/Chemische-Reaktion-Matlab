%b)
%% Die Variablen
h=2^(-5);
c_A0=5;
T=10;

%% 1. Plot
k_1=0.5;
k_2=1;

[t, c_A, c_B, c_D] = zweistufige_Reaktion(k_1, k_2, h, c_A0, T)
subplot(3,1,1)
plot(t,c_A,t,c_B,t,c_D)
title('k_1=0.5, k_2=1')
xlabel('time')
ylabel('concentration')

%% 2. Plot
k_1=1;
k_2=0.5;

[t, c_A, c_B, c_D] = zweistufige_Reaktion(k_1, k_2, h, c_A0, T)
subplot(3,1,2)
plot(t,c_A,t,c_B,t,c_D)
title('k_1=1, k_2=0.5')
xlabel('time')
ylabel('concentration')

%% 3. Plot
k_1=5;
k_2=0.2;
[t, c_A, c_B, c_D] = zweistufige_Reaktion(k_1, k_2, h, c_A0, T)
subplot(3,1,3)
plot(t,c_A,t,c_B,t,c_D)
title('k_1=5, k_2=0.2')
xlabel('time')
ylabel('concentration')

%% Der Haupttitel aller Subplots
sgtitle('Konzentrationsverlauf 2stufige Reaktion')
