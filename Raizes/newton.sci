function [x,i]= newton(x0,e,N)
    
    x = x0;
    erro = 1;
    i=1;
    while(erro > e && i < N)
        xa = x;
        x = x -f(x)/df(x);
        erro = abs(x-xa)/x
        i = i+1;
    end
    
    
endfunction

function y = f(x)
    y = sin(x);
endfunction

function y = df(x)
    y = cos(x);
endfunction
