dat= zeros(51,4);
for i= 0:50
    dat(i+1,1)= i;
    dat(i+1,2)= normpdf(i,15,sqrt(10.5));
    dat(i+1,3)= poisspdf(i,15);
    dat(i+1,4)= binopdf(i,50,0.3);
end;

save dataset dat;


