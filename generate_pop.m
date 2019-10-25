function outcome=generate_pop(imagepart,u0,n,r)
 newvalue=zeros(128,128,4,n);
 for pop=1:n
  for part=1:4
    uik=u0(pop,part);
  for i=1:128
      for j=1:128
              uik=r*uik*(1-uik);
              newvalue(i,j,part,pop)=bitxor(round(uik*255),(imagepart(i,j,part,pop)));
      end
  end
 end
end

    population(1:128,2:129,:)=newvalue(:,:,1,:);
    population(1:128,130:257,:)=newvalue(:,:,2,:);
    population(129:256,2:129,:)=newvalue(:,:,3,:);
    population(129:256,130:257,:)=newvalue(:,:,4,:);
    %% add column 1 and 128 to help as a sign 
     for i=1:n
         population(:,1,i)=i;
         population(:,258,i)=i;
     end
    outcome=population;