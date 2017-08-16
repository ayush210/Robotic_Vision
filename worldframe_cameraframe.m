function [cameraframe,image,temp,indexx,indexy,indexz,an]=worldframe_cameraframe(n,a)
[u,v,w,d3] = generateCube(n,a);
 z = homogeneousmatrices(8);
 d3 = [d3;ones(1,size(d3,2))];
 for i=1:8
     for j = 1:n      
 cameraframe(i,:,j) = z(:,:,i)*d3(:,j);
 end
 end
cameraframe = cameraframe(:,[1:3],:)
k = [100,0,50;0 100 100;0 0 1];
for i = 1:8
    for j = 1:n
temp(:,1) = cameraframe(i,:,j);
image(i,:,j) = k*temp;
    end
end
 for i = 1:8
     for j = 1:n
            temp = image(i,3,j);
         for k=1:3
             image(i,k,j) = image(i,k,j)/temp;
     end
     end
 end
 indexx(:) = image(1,1,:);
 indexy(:) = image(1,2,:);
 indexz(:) = image(1,3,:);
 an = [indexx;indexy];
 plot(indexx,indexy);
end


