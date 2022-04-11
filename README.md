# Chemische-Reaktion-Matlab
Numerische Betrachtung einer chemischen Reaktion mit der expliziten Euler Methode in Matlab

Wir betrachten eine chemische Reaktion, bei der der Stoff A zum Stoff B umgesetzt wird. Zum Beispiel reagiert Ethin mit Wasserstoff und wird zu Ethen. 
A-k_1->B.

Dabei gilt, dass die zeitliche Abnahme der Konzentration cA vom Stoff A proportional ist zur Konzentration des noch vorhandenen Stoffes A. Fu ̈r die Geschwindigkeit der Reaktion gilt also

(d/dt)c_A(t) = -k_1 * c_A(t). (1)

Hierbei ist k_1 die Geschwindigkeitskonstante der Reaktion, welche von Umgebungsparametern abhängen kann, wie zum Beispiel der Konzentration oder Art einer Säure. Zum Zeitpunkt t = 0 gilt für die Konzentration:

c_A(t) = c_A^0 * exp(-k_1*t).

Bei einer zweistufigen Reaktion wird das Produkt B mit Hilfe einer weiteren Reaktion in das Produkt D umgewandelt, wobei die Geschwindigkeitskonstante hierbei k2 ist.

Numerische Betrachtung:

Wir können Gleichung (1) mit Hilfe des sogenannten expliziten Euler-Verfahrens im Zeitintervall [0,T] numerisch lösen. 
