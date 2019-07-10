#include <stdio.h>
#include <string.h>

int main (int argc, char*argv[]){
	char *p = "PentesterAcademyPass";

	if (strcmp(argv[1],p) == 0)
	{
		printf("\nWelcome to the SALE-64bit course! Please proceed to the next video!\n");
	}else {
printf("\n It's time to revie the GDB videos again!\n");
	}	
	return (0);
}
