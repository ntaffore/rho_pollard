/* fichier generale pour récupérer les points distingués et trouvé une collision*/
allocatemem();
allocatemem();
allocatemem();
allocatemem();
allocatemem();

test_parallelisation() = {
	
	my(i,collision,tmp,table,l,n,E,P,Q,jk);
	i = 0;
	collision == 0;
	table = [];
	tmp = readvec("courbe.gp");
	E = tmp[1];
	P = tmp[2];
	Q = tmp[3];
	n = ellorder(E,P);
	gettime();
	w = 0;
	while( (collision != 1),
		tmp = readvec("../test/points_remarquables.txt");
		w++;
		l = #tmp;
		/*print("l ",w);*/
		/*print("i ",i," l ",l);*/
		while ( i < l && collision != 1,
			j = i+1;
/*			print("j ",j);*/
			k = 1;
			while ( k <= #table && tmp[j][1] != table[k][1],k++);
/*			print("k ",k);*/
			if ( k <= #table,
				if ((tmp[j][3] - table[k][3]) % n != 0,collision = 1;);
				/* on ne remet pas l'élément que l'on a déja */
			,
				table = concat(table,[tmp[j]]);
			);
			print("k ",k);
		/*	print("i ",i);*/
			i++;
/*			print("i ",i," l ",l);*/
		);
	);
	if ( (tmp[j][3] - table[k][3]) % n == 0,
		print("failled------------------");
		system("echo failed b == b");
	,
		c = Mod(tmp[j][3] - table[k][3] ,n);
					/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
		if (ellpow(E,P,lift((table[k][2] - tmp[j][2])*c^-1)) == Q,
		   	write("../test/temps_parallele.txt","check -- ");
			print("-----check");
			print(lift((table[k][2] - tmp[j][2])*c^-1));
			print("j ",j," k ",k);
			T = gettime();
			if ( T != 0, write("../test/temps_parallele.txt",log(T)/log(2)); return(log(T)/log(2)); );
		,
			write("../test/temps_parallele.txt","failled ellpow -----------------------------	");
			print("failed");
			print("j ",j," k ",k);
			print(Q);
			print(ellpow(E,P,lift((table[k][2] - tmp[j][2])*c^-1)));
			system("sleep 10");
		);
	);		
	return(0);
}

print(test_parallelisation());
/*quit;*/
