#!/usr/bin/awk -f
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
		a[i]+=$i;                                            #for the mean
		b[i]+=($i*$i); 					     #for the standard deviation
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
	printf("max    |       |");          		            #printing the max
	for(i=5;i<=NF;i+=2) 
		printf("%6d |",max[i]);
	printf("%7d\n",max1);
	printf("min    |       |");				    #printing the min
	for(i=5;i<=NF;i+=2) 
		printf("%6d |",min[i]);
	printf("%7d\n",min1); 					   	
	printf("mean   |       |"); 				    #printing the mean
	for(i=5;i<=NF;i+=2) 
		printf("%6.2f |",a[i]/NR); 
	printf("%7.2f \n",kl/NR); 
	printf("sd     |       |"); 				    #printing the standard deviation
	for(i=5;i<=NF;i+=2) 
		printf("%6.2f |",sqrt((b[i]/NR)-(a[i]/NR)*(a[i]/NR)));
	printf("%7.2f \n",sqrt((kl2/NR)-(kl/NR)*(kl/NR)));
}  

