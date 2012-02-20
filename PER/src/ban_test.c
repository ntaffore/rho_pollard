
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>
#include <stdio.h>


/* variable global */
int VERSION = 1;
int SUBVERSION = 0;
int REVISION = 1;
char *name_program = "testbed";
int nbcurves = 10;
int nbtests = 10;
int vers = 1;
int min = 35;
int max = 35;

static void
usage (int status)
{
  if (status == EXIT_SUCCESS)
    {
      fprintf (stdout, "\nUsage : ban_test [OPTION] \n"
	       "-V, --version \t\t display version and exit\n"
	       "-h, --help \t\t display this help\n"
		   "-c, --curves\t\t give the number of curve (default c = 10)\n"
		   "-t, --tests\t\t test number for one curve (default t = 10)\n"
		   "-v, --version_test\t give the version of the testbeb (default v = 1)\n"
		   "-m, --minimun\t\t enter the minimun of bit pour p\n"
		   "-M, --maximun\t\t enter the maximun of bit pour p\n"
	       );
    }
  else
    {
      fprintf (stderr, "Try '%s --help' for more information\n",
	       name_program);
    }
  exit (status);
}


static void
version ()
{
  fprintf (stdout, "\n%s %d %d %d\n", name_program, VERSION, SUBVERSION,
	   REVISION);
  fprintf (stdout, "This software is a testbed\n");
  exit (EXIT_SUCCESS);
}


int main (int argc, char *argv[])
{

  const struct option long_option[] = {
    {"help", no_argument, NULL, 'h'},
    {"version", no_argument, NULL, 'V'},
	{"curves", 1, NULL, 'c'},
	{"tests", 1, NULL, 't'},
	{"version_test", no_argument, NULL, 'v'},
	{"minumun", 1, NULL, 'm'},
	{"maximun", 1, NULL, 'M'},
	{"prog", 1, NULL, 'p'},
    {NULL, 0, NULL, 0}
  };

  int optc;
  FILE *file = NULL;
  int a;
  char * prog;
  prog = "newban";
  srand(time(NULL));

  while ((optc = getopt_long (argc, argv, "hVc:t:m:M:v:p:", long_option, NULL)) != -1)
  {
      switch (optc)
	  {
		case 'h':
		  usage (EXIT_SUCCESS);
		  break;
		case 'V':
		  version ();
		  break;
		case 't':
			if (argc >= optind )		
			{
				nbtests = atoi(optarg);
			}			
			break;
		case 'p':
			if (argc >= optind )		
			{
				int tmp = atoi(optarg);
				switch (tmp) 
				{
					case 1:
						prog = "newban";
						break;
					case 2:
						prog = "newban_multi";
						break;
				}
			}			
			break;
		case 'c':
			if (argc >= optind )		
			{
				nbcurves = atoi(optarg);
			}			
			break;
		case 'v':
			if (argc >= optind )		
			{
				vers = atoi(optarg);
			}			
			break;
		case 'm':
			if (argc >= optind )		
			{
				min = atoi(optarg);
			}			
			break;
		case 'M':
			if (argc >= optind )		
			{
				max = atoi(optarg);
			}			
			break;

			
		default:
		  usage (EXIT_FAILURE);
     }
  }  

	system("rm -f ban.gp");
	file = fopen ("ban.gp", "w");	        
	if (file == NULL)
	{
	  fprintf (stderr, "error: Can not open the file ban.gp\n");
	  usage (EXIT_FAILURE);
	}

	a = rand() % 200;
	
	fprintf(file,"\\r %s.gp\n for(i=1,%d,random(););\nname = \"temp-%d-%d_curve-%d_test-%d-%s_v-%d\";\ndo_1(rho_p_V5,name,%d,%d,%d,%d);\n"
	,prog,a,min,max,nbcurves,nbtests,prog,vers,min,max,nbcurves,nbtests);
	fclose(file);

	system("./gp ban.gp");

return(EXIT_SUCCESS);
}
