function outcome = partition2(image) 
outcome = zeros(128,129,4);
outcome(:,:,1)=image(1:128,1:129);
outcome(:,:,2)=image(1:128,130:258);
outcome(:,:,3)=image(129:256,1:129); 
outcome(:,:,4)=image(129:256,130:258);