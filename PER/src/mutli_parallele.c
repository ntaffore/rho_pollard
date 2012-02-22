
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>
#include <stdio.h>



int main ()
{

  FILE *file = NULL;
	int a;
  srand(time(NULL));

	file = fopen ("parallele_V2.gp", "w");	        
	if (file == NULL)
	{
	  fprintf (stderr, "error: Can not open the file testbed.gp\n");
	  exit(EXIT_FAILURE);
	}

	/* alea au lancement de gp */
	a = rand() % 2000;
	printf("%d\n",a);
	fprintf(file,"\\r algo_rho_parallele.gp\n for(i=1,%d,random(););\n \\r courbe.gp;\nfor( i = 1, 10000000000,	tmp = rho(E,P,Q);write(\"../test/points_remarquables.txt\",lift(tmp)););\n"
					,a);

	fclose(file);

	system("./gp parallele_V2.gp");

return(EXIT_SUCCESS);
}
