function [ y ] = y( m)
    y=zeros(m,1);
    for s=1:m
        y(s)=exp(-1*0.01*s);
    end
end

