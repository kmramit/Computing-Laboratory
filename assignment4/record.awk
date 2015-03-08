{
	sum=0; 
	for(i=5;i<=NF;i=i+2)
		sum=sum+$i; 
	if(NR == 1) 
	{ 
		for(i=5;i<=NF;i=i+2) 
			min[i] = $i;
	}
	for(i=5;i<=NF;i=i+2) 
	{
		if($i>max[i]) max[i]=$i; 
		if($i<min[i]) min[i]=$i;  
	} 
	if(NR == 1) min1 = sum;
	kl+=sum;
	kl2+=(sum*sum);
	if(sum<min1) min1=sum;
	if(sum>max1) max1=sum;
	printf("%s |%7d\n",$0,sum);
}   
END { 
	printf("max    |       |"); 
	for(i=5;i<=NF;i+=2) 
		printf("%6d |",max[i]);
	printf("%7d\n",max1);
	printf("min    |       |");
	for(i=5;i<=NF;i+=2) 
		printf("%6d |",min[i]);
	printf("%7d\n",min1); 
}  

