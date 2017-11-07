function [x,cont]=GS(A,b,x0,e,N)
    [l,c] = size(A)
    erro = 1
    x = x0
    cont = 0
    while erro > e && cont < N
        xa = x
        cont = cont + 1
        for j = 1:l
            soma = 0
            for k = 1:l
                if k~=j
                    soma = soma + A(j,k)*x(k)
                end
            end
            x(j) = (b(j)-soma)/A(j,j)
        end
        erro = max(abs(x-xa))/max(abs(x))
    end
endfunction 
