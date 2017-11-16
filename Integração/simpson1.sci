function A = simpson1(a,b,n,y)
// Description of name(input)
h = (b-a)/n
x = a:h:b
y = f(x)
A = y(1)
for i = 2:n
    if modulo(i,2) == 0
        A = A + 4*y(1)
    else
        A = A + 2*y(i)
    end   
end
A = (h/3)*(A + y(n+1))
endfunction

function y = f(x)
    // Description of name(input)
        y = sin(x);
endfunction
