/* fichier generale pour récupérer les points distingués et trouvé une collision*/

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
	while( (collision != 1),
		tmp = readvec("../test/points_remarquables.txt");
		l = #tmp;
		while ( i < l && collision != 1,
			j = i+1;
			print("j ",j);
			k = 1;
			while ( k <= #table && tmp[j][1] != table[k][1], k++);
			print("k ",k);
			if ( k <= #table && tmp[j][1] != table[k][1],
				if ((tmp[j][3] - tmp[k][3]) % n != 0,collision = 1;);
				/* on ne remet pas l'élément que l'on a déja */
			,
				table = concat(table,[tmp[j]]);
			);
			print("i ",i);
			i++;
			print("i ",i," l ",l);
		);
	);
	if ( (tmp[j][3] - tmp[k][3]) % n == 0,
		print("failled------------------");
	,
		c = Mod(tmp[j][3] - tmp[k][3] ,n);
					/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
		if (ellpow(E,P,lift((tmp[k][2] - tmp[j][2])*c^-1)) == Q,
		   	print("check ");
		,
			print("failled ellpow -----------------------------	")
		);
	);		
	T = gettime();
	return(log(T)/log(2));
}

print(test_parallelisation());
/*quit;*/
