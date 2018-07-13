#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h> 

#define UNLIMIT
#define MAXARRAY 60000 /* this number, if too large, will cause a seg. fault!! */

struct myStringStruct {
  char qstring[128];
};

int compare(const void *elem1, const void *elem2)
{
  int result;
  
  result = strcmp((*((struct myStringStruct *)elem1)).qstring, (*((struct myStringStruct *)elem2)).qstring);

  return (result < 0) ? 1 : ((result == 0) ? 0 : -1);
}

int Qucik_sort(struct myStringStruct X[],int n)
{
    int j;
    struct myStringStruct temp,key;
    for(int i=1;i<n;i++)
    {
        key=X[i];
        temp=X[i];
        j=i-1;
        while(j>=0&&compare((void *)&X[j],(void *)&key)>0)
        {
            X[j+1]=X[j];
            j--;
        }
        X[j+1]=temp;
     //   printf(" sorted  %s  i=%d \n",temp.qstring,i);
    }
    return 1;
}

int main(int argc, char *argv[]) {
  struct myStringStruct array[MAXARRAY];
  FILE *fp;
  int i,count=0;
#if 0
  if (argc<2) {
    fprintf(stderr,"Usage: qsort_small <file>\n");
    exit(-1);
  }
  else {
    fp = fopen(argv[1],"r");
    
    while((fscanf(fp, "%s", &array[count].qstring) == 1) && (count < MAXARRAY)) {
	 count++;
    }
  }
#endif

   char buf[100];   
   getcwd(buf,sizeof(buf));   
   strcat(buf,"/input_small.dat");
   printf("%s\n", buf);
   fp = fopen(buf,"r");
    
    while((fscanf(fp, "%s", &array[count].qstring) == 1) && (count < MAXARRAY)) {
      count++;
    }

  
   printf("\nSorting %d elements.\n\n",count);
   Qucik_sort(array,count);
  
  for(i=0;i<count;i++)
    printf("%s\n", array[i].qstring);
  return 0;
}
