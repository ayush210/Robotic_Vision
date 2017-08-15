function [x]=homogeneousmatrices(n)
for i = 1:n
    x(:,:,i) = [cos(i*2*pi/n) cos(pi/2-i*2*pi/n) 0 -cos(i*2*pi/n)*25;cos(pi/2+i*2*pi/n) cos(i*2*pi/n) 0 -sin(i*2*pi/n)*25;0 0 1 0;0 0 0 1]
end
end