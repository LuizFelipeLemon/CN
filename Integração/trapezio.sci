function A = trap(a,b,n,y)
//Calcula a área abaixo dos pontos de y entre os limites a e b com n subintervalos
h = (b-a)/n
x = a:h:b;
y = f(x);
A = y(1);
for i = 2:n
    i
    A = A + 2*y(i);

end
A = (h/2)*(A + y(n+1));
endfunction

function y = f(x)
//Description of name(input)
   y = sin(x);
endfunction
