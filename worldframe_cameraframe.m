function [cameraframe]=worldframe_cameraframe(n,a)
[u,v,w,d3] = generateCube(n,a);
 z = homogeneousmatrices(8);
 d3 = [d3;ones(1,size(d3,2))];
 for i=1:8
     for j = 1:n      
 cameraframe(i,:,j) = z(:,:,i)*d3(:,j);
 end
 end
cameraframe = cameraframe(:,[1:3],:)
end
