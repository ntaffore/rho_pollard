#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <math.h>
#

#include"parallelisation_rho.h"


int main(){

	char *name_file = "../test/points_remarquables.txt";
	FILE *file = NULL;
	int collision = 0;
	char *retour;
	char *test;
	tree T = NULL,T_tmp;
	
	//temp
	double deb,fin;
  	deb=clock();
	//
	
	retour = (char*) malloc(200*sizeof(char));

	file = fopen (name_file, "r");	        
	if (file == NULL)
	{
	  fprintf (stderr, "error: Can not open the file testbed.gp\n");
	  exit (EXIT_FAILURE);
	}

	int j = 0;
	while( collision != 1 ) {
		j++;
		test = fgets(retour,200,file);
		if (test != NULL) {
			T_tmp = transforme_node(retour);
/*			print_node(T_tmp);*/
			if ( T == NULL) {
				T = T_tmp;
			} else {
				collision = adding_node(T,T_tmp);
			}
		}
/*		print_arbre(T);*/
	}
	
	// temps
	fin=clock();
	fprintf(stdout, "temps : %f\n", (double)(fin-deb) / (double) CLOCKS_PER_SEC); 
	// fin temps

	free(retour);
	fclose(file);
	return(0);

}

/* affiche arbre */
void print_arbre(tree T) {

	if ( T!= NULL) {
		if( T->left != NULL) {
			print_arbre(T->left);
		}
		if (T->right != NULL) {
			print_arbre(T->right);
		}
		print_node(T);		
	}
}

/* affichae d'un node */
void print_node(tree T) {

	if (T != NULL) {
		fprintf(stdout,"[%llu, %llu], a = %llu, b = %llu\n",T->x,T->y,T->a,T->b);
	}
}

/* creation d'un arbre */

tree new_node(unsigned long long int x, unsigned long long int y,unsigned long long int a, unsigned long long int b) {
    tree t;
    t = (tree)malloc(sizeof(node_t));
    t->left = NULL;
    t->right = NULL;
	t->x = x;
	t->y = y;
	t->a = a;
	t->b = b;
    return t;
}


/* transformation d'une chaine de caractère en node */
/* structure d'une ligne [[xxxxxx,xxxxxx],xxxxxx,xxxxxx ] */

tree transforme_node(char * line) {
	
	int size,i,j,k,r;
	unsigned long long int tab[5];
	char *tmp;	
	tree T;
		
	/*printf("%s\n",line);*/
	
	size = (int) strlen(line);
	i = 2;
	j = 2;
	r = 0;
	while ( i < size) {
		while ( ( line[i] != ',' && line[i] != ']') &&  i < size ) {
		/*	printf("%c ",line[i]);		*/
			i++;
		}
/*		printf("\n");*/
		if ( i < size) {
			tmp = (char *)malloc( (i-j) * sizeof(char));
			k = 0;
			while ( j < i ) {
				tmp[k++] = line[j++];
			}
			tmp[k] = '\0';
			tab[r++] = atoll(tmp);
			/*printf("----%ulld\n",tab[r]);*/
			free(tmp);
			if ( line[i] == ',') {
				i++;
				j++;
			} else {
				i += 2;
				j += 2;
			}
		}
	}
	T = new_node(tab[0],tab[1],tab[2],tab[3]);
	return(T);
}

/* trouve la position */ 
tree find_position(tree T,unsigned long long int x, unsigned long long int y) {

	if ( x < T->x ) {
		if ( T->left == NULL) {
			return(T);
		} else {
			return(find_position(T->left,x,y));
		}
	} else {
		if ( x == T->x && y < T->y) {
			if ( T->left == NULL) {
				return(T);
			} else {
				return(find_position(T->left,x,y));
			}		
		} else {
			if ( x == T->x && y == T->y ) {
				return(T);
			} else {
				if ( T->right == NULL) {
					return(T);
				} else {
					return(find_position(T->right,x,y));
				}
			}
		}
	}
}


/* ajout d'un nouveau point remarquable */
/* a partir de la racine de l'arbre */
int adding_node(tree T, tree T2 ) 
{
	tree tmp = find_position(T,T2->x,T2->y);
	if ( T2->x < tmp->x ) {
		tmp->left = T2;
		return(0);
	} else {
		if ( T2->x == tmp->x && T2->y < tmp->y) {
			tmp->left = T2;
			return(0);
		} else {
			if ( T2->x == tmp->x && T2->y == tmp->y ) {
				/* action à definir */	
				if ( T2->b == tmp->b ){
					printf("echec------------------------------------\n");
					free(T2);
					return(0);
				} else {
					printf("%lld %lld\n",tmp->x, tmp->y);
					printf("%lld %lld\n",tmp->a, tmp->b);
					printf("%lld %lld\n",T2->x, T2->y);
					printf("%lld %lld\n",T2->a, T2->b);
					printf("reussi------------------------------------\n");
					return(1);
				}
			} else {
				tmp->right = T2;
				return(0);
			}
		}
	}
}

/* effecement de l'arbre */
void free_tree(tree T) {
	
	if (T->left == NULL && T->right == NULL) {
		/* free each leaf */
		free(T);
		T = NULL;
	} else {
		if (T->left != NULL) {
			free_tree(T->left);
		}
		T->left = NULL;
		if (T->right != NULL) {
			free_tree(T->right);
		}
		T->right = NULL;
		/* free each node */
		free(T);
	}
}

