clear all
clc
tic
n=50;%number population
I=imread('peppers.bmp');%% image reading
%I=rgb2gray(I);
I=imresize(I,0.5);
%I=double(I);
[a,b]=size(I);
%% -------------division the image to 4 part-------------
imagepart = partition(I,a,b);% function divide image 
%% ------------key selection---------------
key=key_select(imagepart,n,5);
u0=primary_chaos(key,n);
r=3.999;
%% -------------------permutation step ---------------
population=permutation(imagepart,u0,n);

%% --------------confusion step --------------
 population2 = generate_pop(population,u0,n,r);
 %% genetic algorithm
 for itt=1:30
   parent1= knuthShuffle(population2);%to have random parent
   parent2= knuthShuffle(population2);
    for j=1:n
     [off1(:,:,j),off2(:,:,j)]=crossover(parent1(:,:,j),parent2(:,:,j)); % crossovering
    end
     popu(:,:,1:50)=parent1;
     popu(:,:,51:100)=parent2;
     popu(:,:,101:150)=off1;
     popu(:,:,151:200)=off2;
    
     cost(:,itt)=corr_harizental(popu);% calculation of costfunction
     cost=abs(cost);
     [sorting, andis]=sort(cost,'ascend');% sorting 
     for i=1:50
         if i<=45
             jj=andis(i,itt);
        else
        jj=i;
        end
        population2(:,:,i)=popu(:,:,jj);
    end

end
 cyphertext=population2(:,:,1);
 num=[cyphertext(1,1),cyphertext(130,1)];
 key2=[key(num(1),:,1);key(num(2),:,2);key(num(2),:,3);key(num(1),:,4)];% find key to transmit
 cyphertext=cyphertext(:,2:257);% emission of column 1 and 258
 save('save.mat','cyphertext','key2')

 
 