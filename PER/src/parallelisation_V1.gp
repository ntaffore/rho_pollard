/* fichier generale pour récupérer les points distingués et trouvé une collision*/
allocatemem();
allocatemem();
allocatemem();
allocatemem();
allocatemem();

/* initialization of a vector at 1 */
initialisation_vector( vect ) = {

	my (i, n);
	n = # vect;
	for (i = 1, n, vect[i] = 1);
	return(vect);

}

test_parallelisation() = {
	
	my(i,collision,tmp,table,l,n,E,P,Q,jk);
	my (nbfile = 31, file_read);
	my (l_previous);

	i = 0;
	collision == 0;
	table = [];
	l = vector(nbfile);
	l_previous = vector(nbfile);
	l_previous = initialisation_vector ( l_previous);

	/* data of discet logarithm */
	tmp = readvec("courbe.gp");
	E = tmp[1];
	P = tmp[2];
	Q = tmp[3];
	n = ellorder(E,P);
	gettime();

	while( (collision != 1),
		file_read = 1;
		/* reading in each file */
		while ( (file_read <= nbfile && collision != 1),
			tmp = readvec(Str("../test/points_remarquables_",file_read,".txt"););
			/* size of reading file */
			l[file_read] = #tmp;

			/* test if new size reading is greater than the previous size */		
			while ( l_previous[file_read] < l[file_read]  && collision != 1,
				k = l_previous[file_read];
				i = 1;

				/* if tmp[k][1] is in table, we recover the indice i */
				while ( i <= #table && tmp[k][1] != table[i][1],i++);

				if ( i <= #table,	
					if ( (tmp[k][3] - table[i][3]) % n != 0, collision = 1;);
					/* else */
					/* we do not remit the same elements */
				,
					/* adding new ellement in the table */
					table = concat(table,[tmp[k]]);
				);	
				l_previous[file_read] ++ ;
			);
			/* increase the indice of reading file */
			file_read++;
		);
	);
	/* test if we are a unuseful collision */
	if ( (tmp[k][3] - table[i][3]) % n == 0,
		print("failled------------------");
		system("echo failed b == b");
	,
		c = Mod(tmp[k][3] - table[i][3] ,n);
					/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
		if (ellpow(E,P,lift((table[i][2] - tmp[k][2])*c^-1)) == Q,
		   /*	write("../test/temps_parallele.txt","check -- ");*/
			T = gettime();
			if ( T != 0, write("../test/temps_parallele.txt",log(T)/log(2));print(T); return(log(T)/log(2)); );
		,
			write("../test/temps_parallele.txt","failled ellpow ");
		);
	);		
	return(0);
}

print(test_parallelisation());
/*quit;*/
