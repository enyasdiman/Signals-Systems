clc; clear all;
%%
  n=-10:10;
x = 0.*n;
for i = 1:length(n)
  if(n(i)==0)
    x(i)=1;
end
end
steam(n,x,'filled');
