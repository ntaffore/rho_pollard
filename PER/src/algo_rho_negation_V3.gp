/* fonction qui applique directement la negation */
/* permet de diviser le groupe en 2 */

/* table de R element aleatoire dans P */
table(E,P,Q,r) = {

	my(i,a,b,n,list);
	n = ellorder(E,P);
	list = vector(r);
	for(i=1,r,
		a = random(n);
		b = random(n);
		W = elladd(E,ellpow(E,P,a),ellpow(E,Q,b));
		list[i] =[W,a,b];
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
		   if ( lift(-W[2]) < lift(W[2]), W[2]= -W[2]; a = -a %n; b = -b %n;);
		);
		return([W,P,Q,a,b]);
}


		

rho(E,P,Q,r) = {


		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0,list);
		my(mod);
		my(list_W1, list_W2 , len);

		len = 3;
		list_W1 = vector(len);
		list_W2 = vector(len);

		n = ellorder(E,P);
		list = table(E,P,Q,r);
		mod = P[1].mod;
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));
		tmp = func_negation(E,W1,P,Q,a0,b0,n,list,r,mod);		
		W2 = tmp[1];
		a1 = tmp[4];
		b1 = tmp[5];

		while( (W1 != W2) && (i < 2*sqrt(P[1].mod)),
			 
			 tmp = func_negation(E,W1,P,Q,a0,b0,n,list,r,mod);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];

			 list_W1 = stockage_list(len,list_W1,W1,a0,b0);
	
			 if ( i > 3 ,
				tmp = fruitless_cycles(E,list_W1,n);
				if (tmp[2] == 1,
					W1 = tmp[1][1];
				 	a0 = tmp[1][2];
				 	b0 = tmp[1][3];
					list_W1 = stockage_list(len,list_W1,W1,a0,b0);
				);
			 );

			 tmp = func_negation(E,W2,P,Q,a1,b1,n,list,r,mod);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 tmp = func_negation(E,W2,P,Q,a1,b1,n,list,r,mod);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
		
			 list_W2 = stockage_list(len,list_W2,W2,a1,b1);
			 if ( i > 3 && W1 != W2,
				tmp = fruitless_cycles(E,list_W2,n);
				if (tmp[2] == 1,
					W2 = tmp[1][1];
				 	a1 = tmp[1][2];
				 	b1 = tmp[1][3];
					list_W2 = stockage_list(len,list_W2,W2,a1,b1);
				);	
			 );
			i = i+1;
		);

		if ( i >= 2*sqrt(P[1].mod),
			print(" trop long ");
			return(2);
		);
				
		tmp = good_rel(E,P,Q,a0,b0,a1,b1,n);
		if ( tmp == 0,
			print([W1,W2]);
			print([a0,b0,a1,b1]);
			verif(E,P,Q,W1,a0,b0);
			verif(E,P,Q,W2,a1,b1);
			print("??????????????????????");
			return(0);
		,
			a0 = tmp[1];
			b0 = tmp[2];
			a1 = tmp[3];
			b1 = tmp[4];
		);

		if ( (b0 - b1) % n == 0 ,
			print("failled");
			return(i/sqrt(n));
		,
			c = Mod(b1-b0,n);
			if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			   	print("check ");
				return(i/sqrt(n));
			,
				print("failled ellpow");
				return(0);
			);
		);		
}		

/* fonction qui stocke les n derniers elememts de la suite */
/* ainsi que leur coeff a et b */
stockage_list(n,list,W,a,b) = 
{
	my(i);
	for( i = 1, n-1,
		list[i] = list[i+1];
	);
	list[n] = [W,a,b];
	return(list);
}

/* minimun lexicographic sur les courbes elliptiques */
/* prend une liste d'element : [W,a,b] non vide comme argument */
/* respectele negation map */

/* point a l'infini le plus grand */
minimun_lex(list) = 
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
	/*if (mini[1] != [0],
		if ( lift( - mini[1][2]) < lift(mini[1][2]),
			mini[1][2] = - mini[1][2];
			mini[2] = - mini[2];
			mini[3] = - mini[3];
		);
	);*/
	return(mini);
}
/* cas specifique fruitless size 2 */

fruitless_cycles(E,list,n) = 
{
	my(l,elements = [],i,tmp,tmp_el,a,b,detect = 0);
	l = # list;
	l = 3;
	if ( list[1][1] == list[3][1],
		detect = 1;
		elements = [ list[1], list[2] ];
		/*affiche_list(elements);*/
		tmp =  minimun_lex(elements);
		W = ellpow(E,tmp[1],2);
		if ( W != [0],
			/* negation map */			
			if (lift(- W[2]) < lift(W[2]),
				W = [W[1], -W[2]]; 
				tmp[2] = (-tmp[2]) % n; 
				tmp[3] = (-tmp[3]) % n;
			);
		);
		a = 2*tmp[2];
		b = 2*tmp[3];
		tmp_el = [W,a,b];
	,
		tmp_el = list[l];
		
	);
	return([tmp_el,detect]);
}

/* détection et correction des cycles court de longueurs n */
/*
fruitless_cycles(n,list) = 
{
	my(l,elements = [],i,tmp,tmp_el,a,b,detect = 0);
	l = # list;
	if ( list[l][1] == list[l-n][1],
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
		tmp_el = list[l];
		
	);
	return(tmp_el);
}

*/
/* fonciton plus general qui detect le plus grand cylce de taille <= n*/
fruitless_cycles_inf(n,list) = 
{
	my(l, i, maxi = 0);
	l = # list;
	for (i = 2,n,
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
		print("---------------------------------");
		return([a0,b0,a1,b1]);
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(-b0%n))) == elladd(E,ellpow(E,P,(-a1%n)),ellpow(E,Q,b1)),
		a0 = a0;
		b0 = -b0%n;
		a1 = -a1%n;
		b1 = b1;
		print("---------------------------------");
		return([a0,b0,a1,b1]);
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(-b0%n))) == elladd(E,ellpow(E,P,a1),ellpow(E,Q,(-b1%n))),
		a0 = a0;
		b0 = -b0 % n;
		a1 = a1;
		b1 = -b1 % n;
		print("---------------------------------");
		return([a0,b0,a1,b1]);
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(-b0%n))) == elladd(E,ellpow(E,P,(-a1%n)),ellpow(E,Q,(-b1%n))),
		a0 = a0;
		b0 = -b0%n;
		a1 = -a1%n;
		b1 = -b1%n;
		print("---------------------------------");
		return([a0,b0,a1,b1]);
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(b0%n))) == elladd(E,ellpow(E,P,(-a1%n)),ellpow(E,Q,(-b1%n))),
		a0 = a0;
		b0 = b0%n;
		a1 = -a1%n;
		b1 = -b1%n;
		print("---------------------------------");
		return([a0,b0,a1,b1]);
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(b0%n))) == elladd(E,ellpow(E,P,(a1%n)),ellpow(E,Q,(-b1%n))),
		a0 = a0;
		b0 = b0%n;
		a1 = a1%n;
		b1 = -b1%n;
		print("---------------------------------");
		return([a0,b0,a1,b1]);
	);
	if ( elladd(E,ellpow(E,P,a0),ellpow(E,Q,(b0%n))) == elladd(E,ellpow(E,P,(-a1%n)),ellpow(E,Q,(b1%n))),
		a0 = a0;
		b0 = b0%n;
		a1 = -a1%n;
		b1 = b1%n;
		print("---------------------------------");
		return([a0,b0,a1,b1]);
	);
	return(0);	

}


/* fonction de verification de W = [a]P + [b]Q */

verif(E,P,Q,W,a,b) = {

	if ( elladd(E,ellpow(E,P,a),ellpow(E,Q,b)) == W,
		print("verifiée");
		,
		print("ereur-----------------------");
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

