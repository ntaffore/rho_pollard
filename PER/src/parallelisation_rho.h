
# ifndef PARALLELISATION_RHO_H
# define PARALLELISATION_RHO_H

/* le point [x,y] = [a]P+ [b]Q */
typedef struct node {
    unsigned long long int x;
	unsigned long long int y;
	unsigned long long int a;
	unsigned long long int b;
    struct node * left;
    struct node * right;
} node_t;

typedef node_t * tree;

void print_node(tree);
tree new_node(unsigned long long int , unsigned long long int ,unsigned long long int , unsigned long long int); 
tree transforme_node(char *);
tree find_position(tree ,unsigned long long int , unsigned long long int );
int adding_node(tree , tree ); 
void free_tree(tree );
void print_arbre(tree);

# endif 
