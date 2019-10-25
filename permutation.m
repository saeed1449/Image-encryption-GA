
function bb=permutation(imagepart,u0,n)
 for k=1:n
    u=zeros(1,128*128);
% u2=primary_chaos2(key2);
 for j=1:4
      u(1)=u0(k,j);
for n=1:128*128
    u(n+1)=u(n)*3.999*(1-u(n));
    M(n)=floor(mod((u(n+1)*10^4),16384));
end
aa=(reshape(imagepart(:,:,j),[],1))';
for i=1:numel(aa)
%j= floor(i*rand(1)+1);
aa([M(i),i])=aa([i,M(i)]);
end
 bb(:,:,j,k)=reshape(aa,[],128);
 end
end