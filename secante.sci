function [rn,i]= secante(x0,x1,e,N)
    
    erro = 1;
    i = 1;
    ra1 = x0;
    rn = x1;
    while(erro > e && i < N)
        ra2 = ra1;
        ra1 = rn;
        rn = ra1 - (f(ra1)*(ra1-ra2))/(f(ra1)-f(ra2));
        erro = abs(rn-ra1)/rn;
        i = i + 1;
    end
    
    
endfunction

function y = f(x)
    y = x^2 + log(x);
endfunction

function y = df(x)
    y = 2*x + 1/x;
endfunction

