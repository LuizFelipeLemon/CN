function[x,i]= biss (a,b,e,N)
    
    i = 1;
    erro = 1;
    x=a;
    while(erro > e && i < N)
        xa = x;
        x = (a+b)/2;
        if(f(x)*f(a)<0)
            b = x;
        else
            a=x;
        end
        i = i + 1;
        erro = abs(x-xa)/x;
    end
endfunction

function y = f(x)
    y = x^2 + log(x);
endfunction

function y = df(x)
    y = 2*x + 1/x;
endfunction
