function outcome=primary_chaos(key,n)
u0=zeros(n,4);
for i=1:4
    for j=1:n
        key1=key(j,:,i);
        bin=dec2bin(key1,8);
        keybin=[bin(1,:) bin(2,:) bin(3,:) bin(4,:) bin(5,:)];
        sum=0;
        for k=1:40
            sum=sum + ((keybin(1,k)-48)*(2^(40-k)));
        end
       u0(j,i)=sum/(2^40); 
    end
end
outcome=u0;
% for i=1:4
%     for j=1:n
%         bin=zeros(a,8,4);
%         bin=dec2bin(key(j,:,i),8);
%         binkey(j,:,i)=[bin(1,:,i) bin(2,:,i) bin(3,:,i) bin(4,:,i) bin(5,:,i)];
%         sum=0;
%         for k=1:a*8
%            sum=sum+((binkey(i,k)-48)*(2^(40-k))); 
%         end
%         u0(j,i)=sum/(2^(a*8));%primary value of each part 
%         
%     end
% end
% outcome=u0;