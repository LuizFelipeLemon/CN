x =[130 200 270 340 410 480 550 620 690];
 
y = [404 227 35 42 50 57 63 179 350];

cont=1;
inf=0;

for i=x(1):0.01:x(length(x)) 
    inf(cont) = newton(x,y,i);    
    cont=cont+1;
end
matplot(img)
plot(x,y,'.r')
plot(x(1):0.01:x(length(x)),inf','r')

Foi calculado o conjunto de pontos da função inferior

x =[130 200 270 340 410 480 550 620 690];
 
y = [404 430 325 422 427 335 374 470 350];

cont=1;
s=0;
for i=x(1):0.01:x(length(x)) 
    s(cont)=lagrange(x,y,i);
    cont=cont+1;
end
//matplot(img)
plot(x,y,'.r')
plot(x(1):0.01:x(length(x)),s','b')

Depois calculado da função superior. Em seguida o vetor diferença entre as funções. 

Dif = s-inf

Calculamos a área
> A = trap(130,690,length(Dif)-1,Dif)
 A  = 

   149051.5
Calculamos o numerador da integral

> ox = x(1):0.01:x(length(x));

  > length(ox)
 ans  =

   56001.

> ox = ox.*Dif

Integramos o resultado desta multiplicação.
> A = trap(130,690,length(C)-1,C);

  > A
 A  = 

   61726234.

   > Xc = A/149051.5
 Xc  = 

   414.12689

Calculamos agr o numerador do Yc
> num = trap(130,690,length(fq)-1,fq)
 num  = 

   46465689.

> Yc = num/149051.5
 Yc  = 

   311.74251

   (414.1,311.7)
