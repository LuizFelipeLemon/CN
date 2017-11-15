Anotações CN 

No paint as dimensões da imagem são:

Horizontal = 712 ; 
Vertical = 596
Extremo da esquerda -- (130,192) ~~ (130,404)
Extremo da direita -- (686,205) ~~ (686 , 391)

plot(130,404,'.o','markersize',10)
plot(686 , 391,'.o','markersize',10)



h=(686-130)/16 = 39,75

Curva Superior 
 
PAINT   ~~~~~~~~  SCILAB
P1 = (165,143)  ~~~~ P1 = (165,453) 
P2 = (199 , 166) ~~~~ P2 = (199 , 430)
P3 = (234 , 272) ~~~~ P3 = (234 , 324)
P4 = (269 , 271) ~~~~ P4 = (269 , 325)
P5 = (304 , 136) ~~~~ P5 = (304 , 460)
P6 = (338 , 172) ~~~~ P6 = (338 , 424)
P7 = (373 , 184) ~~~~ P7 = (373 , 412)
P8 = (408, 171) ~~~~ P8 = (408, 425)
P9 = (443 , 99) ~~~~ P9 = (443 , 497)
P10 = (477 , 258) ~~~~ P10 = (477 , 338)
P11 = (512 , 259) ~~~~ P11 = (512 , 337)
P12 = (547 , 223) ~~~~ P12 = (547 , 373)
P13 = (582 , 139) ~~~~ P13 = (582 , 457)
P14 = (616 , 125) ~~~~ P14 = (616 , 471)
P15 = (651 , 139) ~~~~ P15 = (651 , 457)

Curva Inferior

PAINT   ~~~~~~~~  SCILAB
P1 = (165,290)  ~~~~ P1 = (165,306) 
P2 = (199 , 367) ~~~~ P2 = (199 , 229)
P3 = (234 , 538) ~~~~ P3 = (234 , 58)
P4 = (269 , 561) ~~~~ P4 = (269 , 35)
P5 = (304 , 557) ~~~~ P5 = (304 , 39)
P6 = (338 , 553) ~~~~ P6 = (338 , 43)
P7 = (373 , 550) ~~~~ P7 = (373 , 46)
P8 = (408, 547) ~~~~ P8 = (408, 49)
P9 = (443 , 543) ~~~~ P9 = (443 , 53)
P10 = (477 , 539) ~~~~ P10 = (477 , 57)
P11 = (512 , 536) ~~~~ P11 = (512 , 60)
P12 = (547 , 533) ~~~~ P12 = (547 , 63)
P13 = (582 , 530) ~~~~ P13 = (582 , 66)
P14 = (616 , 425) ~~~~ P14 = (616 , 171)
P15 = (651 , 339) ~~~~ P15 = (651 , 257)

Curva Superior 
 
SCILAB
plot( 165,453,'.g','markersize',10) 
plot( 199 , 430,'.g','markersize',10)
plot( 234 , 324,'.g','markersize',10)
plot( 269 , 325,'.g','markersize',10)
plot( 304 , 460,'.g','markersize',10)
plot( 338 , 424,'.g','markersize',10)
plot( 373 , 412,'.g','markersize',10)
plot( 408, 425,'.g','markersize',10)
plot( 443 , 497,'.g','markersize',10)
plot( 477 , 338,'.g','markersize',10)
plot( 512 , 337,'.g','markersize',10)
plot( 547 , 373,'.g','markersize',10)
plot( 582 , 457,'.g','markersize',10)
plot( 616 , 471,'.g','markersize',10)
plot( 651 , 457,'.g','markersize',10)

Curva Inferior

PAINT   ~~~~~~~~  SCILAB
plot( 165,306,'.r','markersize',10) 
plot( 199 , 229,'.r','markersize',10)
plot( 234 , 58,'.r','markersize',10)
plot( 269 , 35,'.r','markersize',10)
plot( 304 , 39,'.r','markersize',10)
plot( 338 , 43,'.r','markersize',10)
plot( 373 , 46,'.r','markersize',10)
plot( 408, 49,'.r','markersize',10)
plot( 443 , 53,'.r','markersize',10)
plot( 477 , 57,'.r','markersize',10)
plot( 512 , 60,'.r','markersize',10)
plot( 547 , 63,'.r','markersize',10)
plot( 582 , 66,'.r','markersize',10)
plot( 616 , 171,'.r','markersize',10)
plot(651 , 257,'.r','markersize',10)

Vetores função Superior

x =[130 165 199 234 269 304 338 373 408 443 477 512 547 582 616 651 686];
 
y = [404 453 430 324 325 460 424 412 425 497 338 337 373 457 471 457 391];

cont=1;
for i=x(1):0.01:x(length(x))
v = lagrange(x,y,i);
if v>0 && v<590
    s(cont)= v;
else if v < 0
    s(cont) = 0;
else 
    s(cont) = 596;
    
cont=cont+1;
end
matplot(img)
plot(x,y,'.r')
plot(x(1):0.01:x(length(x)),s','b')