#include "cma.h"
#include <stdlib.h>
//#define MSIZE 1024*16

int main(int argc, char * argv[]) {
	if (argc != 2 )
	{
		printf ("usage: %s filename", argv[0]);
	}
	else
	{
	int k;
	unsigned int MSIZE = atoi(argv[1]);

	char *p = malloc(MSIZE);
	unsigned int i = 1;
	int count = 0;
	class_memory(p, MSIZE);

	while(p)
	{
		p = class_malloc(i);
		count++;
		i*=2;
	}

	printf("Largest block successfully allocated: %d\n", i/4);

	class_stats();
	}
	return 0;
}
