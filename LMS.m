function [ theta ] =LMS( theta,phi,y,gamma)          
    theta=theta+gamma*phi'*(y-phi*theta);
end


