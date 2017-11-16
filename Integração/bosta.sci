function C = dot(a,b)
    n = length(a)
    for i = 1:n
        C(i) = a(i)*b(i);
    end
endfunction
