
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
	a = rand() % 5000;
	fprintf(file,"\\r algo_rho_parallele.gp\n");
	fprintf(file,"for(i=1,%d,random(););\n",a);
	fprintf(file,"\\r courbe.gp;\n");
	fprintf(file,"print(E);print(P);\n");
	fprintf(file,"verif(E,P,Q,W,a,b) = {\n");
	fprintf(file,"if ( elladd(E,ellpow(E,P,a),ellpow(E,Q,b)) == W,\n");
	fprintf(file,"print(\"verifiée\");,\n");
	fprintf(file,"print(\"ereur-----------------------------------------\"););}\n");

	fprintf(file,"for( i = 1, 10000000000,	if (tmp != [], tmp = rho(E,P,Q); verif(E,P,Q,tmp[1],tmp[2],tmp[3]);write(\"../test/points_remarquables.txt\",tmp);););\n");
				
	fclose(file);

	system("./gp parallele_V2.gp");

return(EXIT_SUCCESS);
}
