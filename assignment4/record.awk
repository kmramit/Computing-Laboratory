{
	sum=0; 
	for(i=5;i<=NF;i=i+2)
		sum=sum+$i; 
	printf("%s |%7d\n",$0,sum);
}   
