
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>
#include <stdio.h>



int main (int argc, char* argv[])
{

  FILE *file = NULL;
	int a;
	int p;
  srand(time(NULL));

	file = fopen ("parallele.gp", "w");	        
	if (file == NULL)
	{
	  fprintf (stderr, "error: Can not open the file parallele.gp\n");
	  exit(EXIT_FAILURE);
	}

	p = 20;
	p = atoi(argv[2]);
	/* alea au lancement de gp */
	a = rand() % 5000;
	printf("%d\n",a);
	fprintf(file,"\\r algo_rho_parallele.gp\n");
	fprintf(file,"for(i=1,%d,random(););\n",a);
	fprintf(file,"\\r courbe.gp;\n");
	fprintf(file,"print(E);print(P);\n");
	fprintf(file,"verif(E,P,Q,W,a,b) = {\n");
	fprintf(file,"if ( elladd(E,ellpow(E,P,a),ellpow(E,Q,b)) == W,\n");
	fprintf(file,"print(\"verifiée\");,\n");
	fprintf(file,"print(\"ereur-----------------------------------------\"););}\n");
	
	if ( argc == 0) {
		fprintf(file,"for( i = 1, 10000000000,tmp = rho(E,P,Q);if (tmp != [], verif(E,P,Q,tmp[1],tmp[2],tmp		[3]);write(\"../test/points_remarquables.txt\",tmp);););\n");
	} else {
		fprintf(file,"for( i = 1, 10000000000,tmp = rho(E,P,Q,%d); 	if (tmp != [], verif(E,P,Q,tmp[1],tmp[2],tmp		[3]);write(\"../test/points_remarquables_%d.txt\",tmp);););\n",p,atoi(argv[1]));
	
	}
				
	fclose(file);

	system("./gp parallele.gp");

return(EXIT_SUCCESS);
}
