function [L,A] = U(A)
    [li,c] = size(A)
    L = eye(A)
    for j = 1:c-1
        pivo = A(j,j)
        for l = j+1:li
            m = A(l,j)/pivo
            L(l,j) = m;
            A(l,:) = A(l,:) - m*A(j,:);
        end
    end
    //for i = 1:l
      //  A(i,:) = A(i,:)/A(i,i)
    //end
    s = 0;
    
endfunction
