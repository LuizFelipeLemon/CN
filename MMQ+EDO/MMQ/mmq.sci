function a = mmq(x,y,k)
// Ajusta um polinômio de ordem k, aos pontos dados
    n = length(x);
    for i = 1:n        //Linhas
        for j = 1:k+1  //Colunas
            V(i,j) = x(i)^(j-1);
        end
        b(i) = y(i);
    end
    a = inv(V'*V)*(V'*b);
endfunction
