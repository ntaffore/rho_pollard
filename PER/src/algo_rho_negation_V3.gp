/* fonctionqui applique directement la negation */
/* permet de diviser le groupe en 2 */

/* table de R element aleatoire dans P */
table(E,P,Q,r) = {

	my(i,a,b,n,list);
	n = ellorder(E,P);
	list = [];
	for(i=1,r,
		a = random(n);
		b = random(n);
		W = elladd(E,ellpow(E,P,a),ellpow(E,Q,b));
		list = concat(list,[[W,a,b]]);
	);

	return(list);
}

/* W = [a]P + [b]Q
   [0] = [n]P
   list est les elements pour faire la marche aleatoire 
   r la taille de la list
   mod le p premier*/

/* fonction paire */

func_negation( E, W, P, Q, a, b, n, list, r, mod ) = {

                my(c);
				c = lift(W[1]) % r;
				c = c + 1;
				W = elladd(E,W,list[c][1]);
				a = (a + list[c][2] ) % n;
				b = (b + list[c][3] ) % n;
				if ( W != [0],
					if ( lift(W[2]) %2 == 1, W[2]= -W[2]; a = -a %n; b = -b %n;/* print("fait");*/);
				);
/*				print(lift(W));*/
                return([W,P,Q,a,b]);
}


/* on obtient a la fin de la boubel un relation +- */

rho(E,P,Q) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0, mod);
		my(list_W1 = [],list_W2 = [],len);

		
		len = 100;
		r = 500;

		mod = P[1].mod;
		list = table(E,P,Q,r);
   		n = ellorder(E,P);
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));

		tmp = func_negation(E,W1,P,Q,a0,b0,n,list,r,mod);		
		W2 = tmp[1];
		a1 = tmp[4];
		b1 = tmp[5];

		while( (W1 != W2 || b0 == b1 ) && i < (3*sqrt(P[1].mod))  ,

	/*		print(lift([W1,W2]));*/

			 /* W1 */
			 tmp = func_negation(E,W1,P,Q,a0,b0,n,list,r,mod);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];
		
			 list_W1 = stockage_list(len,list_W1,W1,a0,b0);
			
			 cycle = fruitless_cycles_inf( (#list_W1) -1,list_W1);
			 if (cycle != 0 ,
				tmp = fruitless_cycles(cycle,list_W1);
				W1 = tmp[1];
			 	a0 = tmp[2];
			 	b0 = tmp[3];
/*				verif(E,P,Q,W1,a0,b0);*/
				list_W1 = stockage_list(len,list_W1,W1,a0,b0);
/*				print(lift(list_W1));*/
			 );
/*			 affiche_list(list_W1);*/
	
			 /* W2 */
			 tmp = func_negation(E,W2,P,Q,a1,b1,n,list,r, mod);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
	
			 tmp = func_negation(E,W2,P,Q,a1,b1,n,list,r, mod);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];

			 list_W2 = stockage_list(len,list_W2,W2,a1,b1);
		 	
			 cycle = fruitless_cycles_inf( (# list_W2) -1,list_W2);
			
				/* cas chanceux ou on a une bonne intercetion dans W2 */
			 if (cycle != 0, 
				 if ( (list_W2[#list_W2][3] - list_W2[#list_W2 - cycle][3]) % n != 0 ,		
					/*print(lift(list_W2));*/
					W1 = list_W2[#list_W2 - cycle][1];
					a0 = list_W2[#list_W2 - cycle][2] % n;
					b0 = list_W2[#list_W2 - cycle][3] % n;
					W2 = list_W2[#list_W2][1];
					a1 = list_W2[#list_W2][2] % n;
					b1 = list_W2[#list_W2][3] % n;
					/*verif(E,P,Q,W1,a0,b0);
					verif(E,P,Q,W2,a1,b1);
					print([W1,W2,a0,b0,a1,b1,n]);
					print("---------------------------------------------------------> vicotry");*/
				 ,
				 	if ( W1 != W2,
						tmp = fruitless_cycles(cycle,list_W2);
 						W2 = tmp[1];
				 		a1 = tmp[2];
				 		b1 = tmp[3];
/*						verif(E,P,Q,W2,a1,b1);
						print(lift(list_W2));*/
						list_W2 = stockage_list(len,list_W2,W2,a1,b1);
				 	);	
				 );
			);		
			/* affiche_list(list_W2);*/

			 i = i+1;
			 if( b0 == b1 && W1 == W2, print("----W1 = W2 && b0 = b1 -------------> ",i));
		);

		print(i);

/*		print("------");
		print(W1,W2);
		print([a0,b0,a1,b1,n]);*/

		tmp = good_rel(E,P,Q,a0,b0,a1,b1,n);
/*		print([a0,b0,a1,b1,n]);*/


		if ( (b0 - b1) % n == 0 ,
		
			print("failled   -----------------------------------------");
		,
			c = Mod(b1-b0,n);
							/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
			if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			   	print("reussit i = ",i/sqrt(n));
				return(i/sqrt(n));
			,
				print("------------------------------------------failled ellpow -----------------------------	");
				return(0);
			);
		);		
}		

/* fonction de verification de W = [a]P + [b]Q */

verif(E,P,Q,W,a,b) = {

	if ( elladd(E,ellpow(E,P,a),ellpow(E,Q,b)) == W,
		print("verifiée");
		,
		print("ereur------------------------------------------------------------------------------------------");
	);

}


/* fonction affichage dbg */
/* liste type element : [W,a,b] on veut que les W */

affiche_list(list) = 
{
	my(n,i);
	n = # list;
	for (i = 1, n ,
		printf(lift(list[i][1]));
	);
	printf("\n");
}

/* fonction qui stocke les n derniers elememts de la suite */
/* ainsi que leur coeff a et b */
stockage_list(n,list,W,a,b) = 
{
	my(i);
	if( # list < n,
		list = concat(list,[[W,a,b]]); 
		return(list)
	,
		for( i = 1, n-1,
			list[i] = list[i+1];
		);
		list[n] = [W,a,b];
		return(list);
	);
}

/* minimun lexicographic sur les courbes elliptiques */
/* prend une liste d'element : [W,a,b] non vide comme argument */
/* respectele negation map */

/* point a l'infini le plus grand */
minimun_lex(list,o) = 
{
	my(i,n,mini);
	n = # list;
	mini = list[1];
	for( i = 1,n,
		if( lift(list[i][1][1]) < lift(mini[1][1]),
			mini = list[i];
		,
			if ( lift(list[i][1][1]) == lift(mini[1][1]) ,
				if ( list[i][1] != [0] && mini[1] != [0],
						if ( lift(list[i][1][2]) < lift(mini[1][2]),
							mini = list[i];
						);
					
				);
			);
		);
	);
	if (mini[1] != [0],
		if ( lift(mini[1][2]) % 2 == 1,
			mini[1][2] = - mini[1][2];
			mini[2] = - mini[2];
			mini[3] = - mini[3];
		);
	);
	return(mini);
}

/* détection et correction des cycles court de longueurs n */

fruitless_cycles(n,list) = 
{
	my(l,elements = [],i,tmp,tmp_el,a,b,detect = 0);
	l = # list;
	/*print(lift(list));*/
	if ( list[l][1] == list[l-n][1],
	/*	print("fruitless detect ",n);*/
		detect = 1;
	/*	affiche_list(list);*/
		/*print("<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");*/
		for( i = 0, n-1,
			elements = concat(elements,[list[l-i]]);
		);
		tmp =  minimun_lex(elements);
		W = ellpow(E,tmp[1],2);
		if ( W != [0],
			if (lift(W[2]) % 2 == 1, W = [W[1],W[2]] );
			a = 2*tmp[2];
			b = 2*tmp[3];
			tmp_el = [W,a,b];
		,
			tmp_el = list[l];
		);
	,
/*		print("no fruitless");*/
		tmp_el = list[l];
		
	);
	/*print(tmp_el);*/
	return(tmp_el);
}

/* fonciton plus general qui detect un le plus grand cylce de taille <= n*/
fruitless_cycles_inf(n,list) = 
{
	my(l, i, maxi = 0);
	l = # list;
	for (i = 2,n,
	/*	print( list[l][1]," ---- " list[l-i][1]);*/
		if ( list[l][1] == list[l-i][1],
			maxi = i;
		);
	);
	return(maxi);
}


/* retourne les coefficient a0,b0,a1,b1 avec leur bon signe */
good_rel(E,P,Q,a0,b0,a1,b1,n) = {

	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0)) == elladd(E,ellpow(E,P,a1),ellpow(E,Q,b1)),
		a0 = a0;
		b0 = b0;
		a1 = a1;
		b1 = b1;
		return([a0,b0,a1,b1]);
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(-b0 % n))) == elladd(E,ellpow(E,P,a1),ellpow(E,Q,b1)),
		a0 = a0;
		b0 = -b0 % n;
		a1 = a1;
		b1 = b1;
		return([a0,b0,a1,b1]);
		print("---------------------------------");
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(-b0%n))) == elladd(E,ellpow(E,P,(-a1%n)),ellpow(E,Q,b1)),
		a0 = a0;
		b0 = -b0%n;
		a1 = -a1%n;
		b1 = b1;
		return([a0,b0,a1,b1]);
		print("---------------------------------");
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(-b0%n))) == elladd(E,ellpow(E,P,a1),ellpow(E,Q,(-b1%n))),
		a0 = a0;
		b0 = -b0 % n;
		a1 = a1;
		b1 = -b1 % n;
		return([a0,b0,a1,b1]);
		print("---------------------------------");
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(-b0%n))) == elladd(E,ellpow(E,P,(-a1%n)),ellpow(E,Q,(-b1%n))),
		a0 = a0;
		b0 = -b0%n;
		a1 = -a1%n;
		b1 = -b1%n;
		return([a0,b0,a1,b1]);
		print("---------------------------------");
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(b0%n))) == elladd(E,ellpow(E,P,(-a1%n)),ellpow(E,Q,(-b1%n))),
		a0 = a0;
		b0 = b0%n;
		a1 = -a1%n;
		b1 = -b1%n;
		return([a0,b0,a1,b1]);
		print("---------------------------------");
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(b0%n))) == elladd(E,ellpow(E,P,(a1%n)),ellpow(E,Q,(-b1%n))),
		a0 = a0;
		b0 = b0%n;
		a1 = a1%n;
		b1 = -b1%n;
		return([a0,b0,a1,b1]);
		print("---------------------------------");
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(b0%n))) == elladd(E,ellpow(E,P,(-a1%n)),ellpow(E,Q,(b1%n))),
		a0 = a0;
		b0 = b0%n;
		a1 = -a1%n;
		b1 = b1%n;
		return([a0,b0,a1,b1]);
		print("---------------------------------");
	);
	

}
