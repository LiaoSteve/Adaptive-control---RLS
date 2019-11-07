function [ output_args ] = draw( phi,theta,m,n)
    theta(:,m+1)
    for i=1:10
        theta_ans(i)=(-1)^(i-1)/factorial(i-1);
    end
    if(n==4)
        figure,
        subplot(411)
        plot([1,m+1],[theta_ans(1),theta_ans(1)],'b--',1:m+1,theta(1,:),'r'),grid on,axis([-inf, inf,0,1.2])
        xlabel('Iteration'),ylabel('theta[1]'),legend('true value','estimation');
        subplot(412)
        plot([1,m+1],[theta_ans(2),theta_ans(2)],'b--',1:m+1,theta(2,:),'r'),grid on,axis([-inf, inf,-1.2,inf])
        xlabel('Iteration'),ylabel('theta[2]')
        subplot(413)
        plot([1,m+1],[theta_ans(3),theta_ans(3)],'b--',1:m+1,theta(3,:),'r'),grid on,axis([-inf, inf,-inf,0.7])
        xlabel('Iteration'),ylabel('theta[3]')
        subplot(414)
        plot([1,m+1],[theta_ans(4),theta_ans(4)],'b--',1:m+1,theta(4,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[4]')
    end
    if(n==6)
        figure,
        subplot(321)
        plot([1,m+1],[theta_ans(1),theta_ans(1)],'b--',1:m+1,theta(1,:),'r'),grid on,axis([-inf, inf,0,1.2])
        xlabel('Iteration'),ylabel('theta[1]')
        subplot(322)
        plot([1,m+1],[theta_ans(2),theta_ans(2)],'b--',1:m+1,theta(2,:),'r'),grid on,axis([-inf, inf,-1.2,inf])
        xlabel('Iteration'),ylabel('theta[2]')
        subplot(323)
        plot([1,m+1],[theta_ans(3),theta_ans(3)],'b--',1:m+1,theta(3,:),'r'),grid on,axis([-inf, inf,-inf,0.7])
        xlabel('Iteration'),ylabel('theta[3]')
        subplot(324)
        plot([1,m+1],[theta_ans(4),theta_ans(4)],'b--',1:m+1,theta(4,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[4]')    
        subplot(325)
        plot([1,m+1],[theta_ans(5),theta_ans(5)],'b--',1:m+1,theta(5,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[5]')
        subplot(326)
        plot([1,m+1],[theta_ans(6),theta_ans(6)],'b--',1:m+1,theta(6,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[6]')
    end
    if(n==8)
        figure,
        subplot(421)
        plot([1,m+1],[theta_ans(1),theta_ans(1)],'b--',1:m+1,theta(1,:),'r'),grid on,axis([-inf, inf,0,1.2])
        xlabel('Iteration'),ylabel('theta[1]')
        subplot(422)
        plot([1,m+1],[theta_ans(2),theta_ans(2)],'b--',1:m+1,theta(2,:),'r'),grid on,axis([-inf, inf,-1.2,inf])
        xlabel('Iteration'),ylabel('theta[2]')
        subplot(423)
        plot([1,m+1],[theta_ans(3),theta_ans(3)],'b--',1:m+1,theta(3,:),'r'),grid on,axis([-inf, inf,-inf,0.7])
        xlabel('Iteration'),ylabel('theta[3]')
        subplot(424)
        plot([1,m+1],[theta_ans(4),theta_ans(4)],'b--',1:m+1,theta(4,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[4]')   
        subplot(425)
        plot([1,m+1],[theta_ans(5),theta_ans(5)],'b--',1:m+1,theta(5,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[5]')
        subplot(426)
        plot([1,m+1],[theta_ans(6),theta_ans(6)],'b--',1:m+1,theta(6,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[6]')
        subplot(427)
        plot([1,m+1],[theta_ans(7),theta_ans(7)],'b--',1:m+1,theta(7,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[7]')
        subplot(428)
        plot([1,m+1],[theta_ans(8),theta_ans(8)],'b--',1:m+1,theta(8,:),'r'),grid on
        xlabel('Iteration'),ylabel('theta[8]')
    end
    o=phi*theta(:,m+1);
    figure,
    x=0.01:0.01:m/100;
    plot(x,exp(-x),'b--',0.01:0.01:(m/100),o(1:1:m),'r')
    xlabel('x'),ylabel('y=exp(-x)')%,axis([-inf, 3,0,1])
    legend('true value','estimation');title('matching')
end

