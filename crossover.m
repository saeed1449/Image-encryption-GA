function [off1,off2]=crossover(parent1,parent2)
ppart1=partition2(parent1);
ppart2=partition2(parent2);
    off1(1:128,1:129,:)=ppart1(:,:,1);
    off1(1:128,130:258,:)=ppart2(:,:,2);
    off1(129:256,1:129,:)=ppart2(:,:,3);
    off1(129:256,130:258,:)=ppart1(:,:,4);
    off2(1:128,1:129,:)=ppart2(:,:,1);
    off2(1:128,130:258,:)=ppart1(:,:,2);
    off2(129:256,1:129,:)=ppart1(:,:,3);
    off2(129:256,130:258,:)=ppart2(:,:,4);