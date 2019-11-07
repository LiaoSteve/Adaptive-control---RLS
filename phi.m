function [ PHI ] = phi(m,n)
    PHI=zeros(m,n);
    for f=1:m
        for s=1:n
            PHI(f,s)=(f/100)^(s-1);
        end
    end
end
