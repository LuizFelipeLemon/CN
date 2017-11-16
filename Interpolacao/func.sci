function  s = luiz (x,y,img)
    cont=1;
    for i=x(1):0.01:x(length(x))
        v = lagrange(x,y,i);
        s(cont)= v;
        cont=cont+1;
    end
    matplot(img)
    plot(x,y,'.r')
    plot(x(1):0.01:x(length(x)),s','b')
endfunction
