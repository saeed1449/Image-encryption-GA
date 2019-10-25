function outcome = partition(image,a,b) 
outcome = zeros(a/2,b/2,4);
outcome(:,:,1)=image(1:a/2,1:b/2);
outcome(:,:,2)=image(1:a/2,b/2+1:b);
outcome(:,:,3)=image(a/2+1:a,1:b/2); 
outcome(:,:,4)=image(a/2+1:a,b/2+1:b);