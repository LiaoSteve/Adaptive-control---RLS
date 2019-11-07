%%
%RLS;
clear ;
clc ;
format long;
m=100;
n=8;
p=10000*eye(n,n);
theta=zeros(n,m+1);
phi=phi(m,n);
y=y(m);
for k=1:m   
    k
    [p ,theta(:,k+1)]=rls(p,theta(:,k),phi(k,:),y(k,:)) ;
end
draw(phi,theta,m,n);

%%
%RLS_forgetting
clear ;
clc ;
format long;
m=600;
n=8;
theta=zeros(n,m+1);
phi=phi(m,n);
y=y(m);
p=100*eye(n,n);
lambda=0.7;
for k=1:m    
    [p ,theta(:,k+1)]=rls_forgetting(p,theta(:,k),phi(k,:),y(k,:),lambda) ;
end
draw(phi,theta,m,n);

%%
%SA
clear ;
clc ;
format long;
m=300;
n=8;
theta=zeros(n,m+1);
phi=phi(m,n);
y=y(m)+sqrt(3)*(2*rand(m,1)-1);
p=0;
gamma=0.8;
for k=1:m           
    p=p+phi(k,:)* phi(k,:)';
    [theta(:,k+1)]=SA(theta(:,k),phi(k,:),y(k,:),p,gamma) ;    
end
draw(phi,theta,m,n);
%%
%PA
clear ;
clc ;
format long;
m=600; 
n=8;
theta=zeros(n,m+1);
phi=phi(m,n);
y=y(m);
gamma=0.01;
alpha=0.1;
for k=1:m    
    [theta(:,k+1)]=PA(theta(:,k),phi(k,:),y(k,:),gamma,alpha) ;
end
draw(phi,theta,m,n);
%%
%LMS
clear ;
clc ;
format long;
m=300;
n=8;
theta=zeros(n,m+1);
phi=phi(m,n);
y=y(m);
gamma=0.000001;
for k=1:m    
    [theta(:,k+1)]=LMS(theta(:,k),phi(k,:),y(k,:),gamma) ;
end
draw(phi,theta,m,n);
