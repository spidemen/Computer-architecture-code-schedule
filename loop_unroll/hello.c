#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <math.h>
// string to int
 int myAtoi(char *str) 
 {
         int  i=0,sign=1;
        long long base=0;
        while(str[i]==' ') i++;
        if(str[i]=='-'||str[i]=='+')
           sign=1-2*(str[i++]=='-');
        while(str[i]>='0'&&str[i]<='9')
        {
            if(base>INT_MAX/10||(base==INT_MAX/10&&str[i]-0>'7'))
            {
                if(sign==1) return INT_MAX;
                else return INT_MIN;
            }
            base=base*10+(str[i++]-'0');
        }
        return sign*base;
  }
 //caculate total prime
 void Count_Prime(int N)
 {
     int result=N-2;
 	 int prime[N];
 	 prime[0]=prime[1]=0;
 	 int count=0;
 	for(int i=2;i<=N;i++)
 	{
 	  prime[i]=1;
 	  count++;
 	}
 	for(int i=1;i<sqrt(N);i++)
 	{
 		if(prime[i])
 		{
 		   for(int j=i*i;j<N;j=j+i)
 		  {
 		  	 if(prime[j]) result--;
 		  	  prime[j]=0;
 		  }
 		}
 		count--;
 	}
 	printf(" There are total %d  prime \n",result);

 }
# if 0
int Qucik_sort(int X[],int n)
{
    int key,j;
    int temp;
    for(int i=1;i<n;i++)
    {
        key=X[i];
        temp=X[i];
        j=i-1;
        while(j>=0&&X[j]>key)
        {
            X[j+1]=X[j];
            j--;
        }
        X[j+1]=temp;
    }
    return 1;
}
#endif 
int main()
{
	 char str[7]="+9998";
	 int N=myAtoi(str);
	 printf(" After convert, The N =%d\n",N);
	 Count_Prime(N);
     return 0;
  
}