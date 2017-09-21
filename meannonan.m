function mm=meannonan(x)
notin=isnan(x) | isinf(x);
x(notin)=0;
mm=mean(x);
end