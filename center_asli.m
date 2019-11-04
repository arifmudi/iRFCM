clc;clear;
load hasil.mat


new_V = D;
new_V = new_V./(sum(new_V,2) * ones(1,n));

V = out.V;


for i=1:size(V,1)
    for j=1:size(new_V,1)
         Dist(j,i) = sqrt(sum((V(i,:) - new_V(j,:)) .^ 2));
    end
    
    minDist = min(Dist(:,i));
    for iter=1:size(new_V,1)
       if minDist ==  Dist(iter,i)
          center(i) = iter; 
       end
    end    
end