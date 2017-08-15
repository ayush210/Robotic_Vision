function [x,y,z] = generateCube(N,A)
for i=1:N
       temp = randi(6,1,1);
       if(temp==1)
       x(1,i) = A/2;
       y(1,i) = randi([-A/2,A/2],1,1);
       z(1,i) = randi([-A/2,A/2],1,1);
       end
       if(temp==2)
       x(1,i) = -A/2;
       y(1,i) = randi([-A/2,A/2],1,1);
       z(1,i) = randi([-A/2,A/2],1,1);
       end  
       if(temp==3)
           x(1,i) = randi([-A/2,A/2],1,1);
           y(1,i) = A/2;
           z(1,i) = randi([-A/2,A/2],1,1);
       end
       if(temp==4)
           x(1,i) = randi([-A/2,A/2],1,1);
           y(1,i) = -A/2;
           z(1,i) = randi([-A/2,A/2],1,1);
       end
       if(temp==5)
           x(1,i) = randi([-A/2,A/2],1,1);
           y(1,i) = randi([-A/2,A/2],1,1);
           z(1,i) = A/2;
       end
       if(temp==6)
           x(1,i) = randi([-A/2,A/2],1,1);
           y(1,i) = randi([-A/2,A/2],1,1);
           z(1,i) = -A/2;
       end
end
scatter3(x,y,z,'filled');
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
axis([-A/2 A/2 -A/2 A/2 -A/2 A/2]);
end


    