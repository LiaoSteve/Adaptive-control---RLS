
function [ p,theta ] = rls( p,theta,phi,y )    
    k = p *phi'./(1+phi*p*phi')
    p=p-k*phi*p;
    theta=theta+k*(y-phi*theta);
end

