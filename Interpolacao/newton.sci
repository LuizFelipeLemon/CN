function vs = newton (x,y,p)
    n=length(x)
    tdd = ctdd (x,y)
    vs=y(1)
    for i=2:n
        produt=1
            for j=1:i-1
                produt = produt * (p - x(j))
            end
            vs= vs + tdd(1,i)*produt
    end
endfunction

function tdd=ctdd(x,y)
    n=length(x)
    tdd(:,1) = y'
    for i=1 : n-1 
        for j=1 : n-i
            tdd(j,i+1) = (tdd(j+1,i) - tdd (j,i))/(x(j+i)-x(j))
        end
    end
endfunction