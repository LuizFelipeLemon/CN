Anotações CN 

No paint as dimensões da imagem são:

Horizontal = 712 ; 
Vertical = 596
Extremo da esquerda -- (130,192) ~~ (130,404)
Extremo da direita -- (686,205) ~~ (686 , 391)
 Dx = 556 px
 Utilizando 8 pontos dx= 69.5 px
Utilizando 10 pontos dx= 55.6 px


plot(130,404,'.o','markersize',10)
plot(686 , 391,'.o','markersize',10)


# Superior
plot(130,404,'.o','markersize',10)
plot(200,430,'.o','markersize',10)
plot(270,325,'.o','markersize',10)
plot(340,422,'.o','markersize',10)
plot(410,427,'.o','markersize',10)
plot(480,335,'.o','markersize',10)
plot(550,374,'.o','markersize',10)
plot(620,470,'.o','markersize',10)
plot(687,350,'.o','markersize',10)

Vetores função Superior
x =[130 200 270 340 410 480 550 620 687];
 
y = [404 430 325 422 427 335 374 470 350];

cont=1;
s=0;
for i=x(1):0.01:x(length(x)) 
    s(cont)=lagrange(x,y,i);
    cont=cont+1;
end
matplot(img)
plot(x,y,'.r')
plot(x(1):0.01:x(length(x)),s','b')

cont

##Vetores função Superior Par a par

x =[130 200 270 340 410 480 550 620 690];
 
y = [404 430 325 422 427 335 374 470 350];

s=0;
v=0;
matplot(img)
for pos = 1:8
    cont=1;
    for i=x(pos):0.01:x(pos+1)
        v(cont) = lagrange(x(pos:pos+1),y(pos:pos+1),i);
        cont=cont+1;
    end
    plot(x(pos:pos+1),y(pos:pos+1),'.r')
    plot(x(pos):0.01:x(pos+1),v','r')

end
##Vetores função Superior 3 a 3

x =[130 200 270 340 410 480 550 620 690];
 
y = [404 430 325 422 427 335 374 470 350];

s=0;
v=0;
matplot(img)
for pos = 1:2:9
    cont=1;
    for i=x(pos):0.01:x(pos+2)
        v(cont) = lagrange(x(pos:pos+2),y(pos:pos+2),i);
        cont=cont+1;
    end
    plot(x(pos:pos+2),y(pos:pos+2),'.r')
    plot(x(pos):0.01:x(pos+2),v','r')

end

##Vetores função Superior 4 a 4

x =[130 200 270 340 410 480 550 620 690];
 
y = [404 430 325 422 427 335 374 470 350];


s=0;
v=0;
matplot(img)
for pos = 1:3:7
    cont=1;
    pos
    for i=x(pos):0.01:x(pos+3)
        v(cont) = lagrange(x(pos:pos+3),y(pos:pos+3),i);
        cont=cont+1;
    end
    plot(x(pos:pos+3),y(pos:pos+3),'.r')
    plot(x(pos):0.01:x(pos+3),v','r')

end
cont=1;
pos = 7
v=0;
for i=x(pos):0.01:x(pos+2)
    v(cont) = lagrange(x(pos:pos+2),y(pos:pos+2),i);
    cont=cont+1;
end
plot(x(pos:pos+2),y(pos:pos+2),'.r')
plot(x(pos):0.01:x(pos+2),v','r')

# Inferior
plot(130,404,'.o','markersize',10)
plot(200,227,'.o','markersize',10)
plot(270,35,'.o','markersize',10)
plot(340,42,'.o','markersize',10)
plot(410,50,'.o','markersize',10)
plot(480,57,'.o','markersize',10)
plot(550,63,'.o','markersize',10)
plot(620,179,'.o','markersize',10)
plot(687,350,'.o','markersize',10)


##Vetores função Inferior

x =[130 200 270 340 410 480 550 620 687];
 
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


##Vetores função Inferior Par a par

x =[130 200 270 340 410 480 550 620 690];
 
y = [404 227 35 42 50 57 63 179 350];

s=0;
v=0;
matplot(img)
for pos = 1:8
    cont=1
    for i=x(pos):0.01:x(pos+1)
        v(cont) = lagrange(x(pos:pos+1),y(pos:pos+1),i);
        cont=cont+1;
    end
    plot(x(pos:pos+1),y(pos:pos+1),'.r')
    plot(x(pos):0.01:x(pos+1),v','b')

end

##Vetores função Inferior 3 a 3

x =[130 200 270 340 410 480 550 620 690];
 
y = [404 227 35 42 50 57 63 179 350];

s=0;
v=0;
matplot(img)
for pos = 1:2:9
    cont=1;
    for i=x(pos):0.01:x(pos+2)
        v(cont) = lagrange(x(pos:pos+2),y(pos:pos+2),i);
        cont=cont+1;
    end
    plot(x(pos:pos+2),y(pos:pos+2),'.r')
    plot(x(pos):0.01:x(pos+2),v','r')

end

##Vetores função Inferior 4 a 4

x =[130 200 270 340 410 480 550 620 690];
 
y = [404 227 35 42 50 57 63 179 350];

s=0;
v=0;
matplot(img)
for pos = 1:3:7
    cont=1;
    pos
    for i=x(pos):0.01:x(pos+3)
        v(cont) = lagrange(x(pos:pos+3),y(pos:pos+3),i);
        cont=cont+1;
    end
    plot(x(pos:pos+3),y(pos:pos+3),'.r')
    plot(x(pos):0.01:x(pos+3),v','r')

end
cont=1;
pos = 7
v=0;
for i=x(pos):0.01:x(pos+2)
    v(cont) = lagrange(x(pos:pos+2),y(pos:pos+2),i);
    cont=cont+1;
end
plot(x(pos:pos+2),y(pos:pos+2),'.r')
plot(x(pos):0.01:x(pos+2),v','r')




Anotações CN 

No paint as dimensões da imagem são:

Horizontal = 712 ; 
Vertical = 596
Extremo da esquerda -- (130,192) ~~ (130,404)
Extremo da direita -- (686,205) ~~ (686 , 391)

h=(686-130)/16 = 39,75


Curva Inferior

PAINT   ~~~~~~~~  SCILAB
plot(165,306,'.o','markersize',10) 
plot(199 , 229,'.o','markersize',10)
plot(234 , 58,'.o','markersize',10)
plot(269 , 35,'.o','markersize',10)
plot(304 , 39,'.o','markersize',10)
plot(338 , 43,'.o','markersize',10)
plot(373 , 46,'.o','markersize',10)
plot(408, 49,'.o','markersize',10)
plot(443 , 53,'.o','markersize',10)
plot(477 , 57,'.o','markersize',10)
plot(512 , 60,'.o','markersize',10)
plot(547 , 63,'.o','markersize',10)
plot(582 , 66,'.o','markersize',10)
plot(616 , 171,'.o','markersize',10)
plot(651 , 257,'.o','markersize',10)


#Vetores função Inferior

x =[130 165 199 234 269 304 338 373 408 443 477 512 547 582 616 651 686];
 
y = [404 306 229 58 35 39 43 46 49 53 57 60 63 66 171 257 391];

cont=1;
s=0;
for i=x(1):0.01:x(length(x)) 
    s(cont)=lagrange(x,y,i);
    cont=cont+1;
end
matplot(img)
plot(x,y,'.r')
plot(x(1):0.01:x(length(x)),s','b')




