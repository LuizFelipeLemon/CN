# Utilizando MMQ e EDO's :underage:

Tempos de cada Frame
1. 00:00.434
2. 00:00.567
3. 00:00.700
4. 00:00.833
5. 00:00.966
6. 00:01.100
7. 00:01.233
8. 00:01.357
9. 00:01.500
11. 00:01.636
11. 00:01.767
12. 00:01.900

Fr = 30 FPs
h = 4/30 = 0.13333333

## Rampa :roller_coaster:

P1(95,277)
P2(708,246)

teta = 0.0342443566499938381959

## Bola :soccer:

* P0(116,300)
* P1(125,298)
* P2(144,296)
* P3(173,295)
* P4(210,292)
* P5(257,288)
* P6(313,284)
* P7(378,281)
* P8(449,278)
* P9(525,276)
* P10(611,274)
* P11(701,269)

## Calculando a aceleração no sentido do movimento

 A = -k * g * sin(teta)

Calcularemos as componentes da aceleração Ax e Ay criando um vetor de coordenadas e aproximando a um polinômio do tipo: x=a0+a1*t+(a2*t^2)/2; [Código da aproximação MMQ](https://github.com/LuizFelipeLemon/CN/blob/master/MMQ%2BEDO/MMQ/mmq.sci)

t = [0.434 0.567 0.7 0.833 0.966 1.1 1.233 1.357 1.5 1.636 1.767 1.9]
x = [116 125 144 173 210 257 313 378 449 525 611 701]; 
plot(t,x,'o');

a = mmq(t,x,2);