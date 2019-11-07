function [ theta ] =PA( theta,phi,y,gamma,alpha)          
    theta=theta+gamma*phi'*(y-phi*theta)/(alpha+phi*phi');
end


