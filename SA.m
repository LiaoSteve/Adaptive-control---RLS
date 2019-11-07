function [ theta ] =SA( theta,phi,y,temp,gamma) 
    p=gamma/temp 
    theta=theta+p*phi'*(y-phi*theta)/(phi*phi');
end


