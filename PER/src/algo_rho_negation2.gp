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

func_negation(E,W,P,Q,a,b,n,list,r) = {

                my(c);
				c = lift(W[1]) % r;
				c = c + 1;
				W = elladd(E,W,list[c][1]);
				a = (a + list[c][2] ) % n;
				b = (b + list[c][3] ) % n;
				if ( W != [0],
					if ( lift(W[2]) > ( lift( - W[2]) % n), W[2]= -W[2]; a = -a %n; b = -b %n);
				);

                return([W,P,Q,a,b]);
}



/*func_negation(E,W2,P,Q,a,b,n) = {

                my(c);
				c = Mod(lift(W2[1]),3);

                if ( c == 0, W2 = elladd(E,W2,Q); b=(b+1)%n;);
                if ( c == 1, W2 = elladd(E,W2,W2); a=(a+a)%n;b=(b+b)%n;);
                if ( c == 2, W2 = elladd(E,W2,P); a=(a+1)%n;);
				print(W2);
				print([a,b]);
				if ( W2 != [0],
					if ( lift(W2[2]) > ( lift( - W2[2]) % n), W2[2]= -W2[2]; a = -a %n; b = -b %n);
				);
				print([a,b]);
                return([W2,P,Q,a,b]);
}
*/

/* on obtient a la fin de la boubel un relation +- */

rho_p_V5(E,P,Q) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0);
		my(list_W1 = [],list_W2 = [],len);

		
		len = 4;
		r = 3;

		list = table(E,P,Q,r);
   	n = ellorder(E,P);
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));

		tmp = func_negation(E,W1,P,Q,a0,b0,n,list,r);		
		W2 = tmp[1];
		a1 = tmp[4];
	  b1 = tmp[5];

		while( (W1 != W2 || b0 == b1 ) /*&& i < 50*/,
	/*		print(W1,W2);			 */

			 tmp = func_negation(E,W1,P,Q,a0,b0,n,list,r);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];
		
			 list_W1 = stockage_list(len,list_W1,W1,a0,b0);
			 if ( # list_W1 > 3,
/*					affiche_list(list_W1);*/
					tmp = fruitless_cycles(2,list_W1);
 				  W1 = tmp[1];
			 	  a0 = tmp[2];
			 	 	b0 = tmp[3];
/*					print(lift(W1));*/
			 		
/*				  list_W1 = stockage_list(len,list_W1,W1);*/
			 );

			 if (  elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0) ) == W1,
			/*	print("check");*/
			 ,
				print("erreur 1 ------------------------ ");
			 );

			 tmp = func_negation(E,W2,P,Q,a1,b1,n,list,r);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 if (  elladd(E,ellpow(E,P,a1),ellpow(E,Q,b1) ) == W2,
		/*		print("check");*/
			 ,
				print("erreur 2 ------------------------ ");
			 );
	
			 tmp = func_negation(E,W2,P,Q,a1,b1,n,list,r);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 if (  elladd(E,ellpow(E,P,a1),ellpow(E,Q,b1) ) == W2,
			/*	print("check");*/
			 ,
				print("erreur 3 ------------------------ ");
			 );

			 list_W2 = stockage_list(len,liste_W2,W2,a1,b1);
			 if ( # list_W2 > 3,
 				 tmp = fruitless_cycles(2,list_W2);
				  W2 = tmp[1];
	 			  a1 = tmp[2];	
		 		  b1 = tmp[3];

/*				 list_W2 = stockage_list(len,liste_W2,W2);*/
			 );

			 i = i+1;
			 if( b0 == b1 && W1 == W2, print("----W1 = W2 && b0 = b1 -------------> ",i));
/*			print("-_-_-_-_-_-_-_-_-_-_-_-__-"); 	*/
		);

		print(i);

		print("------");
		print(W1,W2);
		print([a0,b0,a1,b1,n]);

		tmp = good_rel(E,P,Q,a0,b0,a1,b1,n);
/*		print([a0,b0,a1,b1,n]);*/


		if ( (b0 - b1) % n == 0 ,
		
			print("failled   -----------------------------------------");
		,
			c = Mod(b1-b0,n);
							/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
			if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			   	print("reussit i = ",i/sqrt(n));
				return(i);
			,
				print("failled ellpow -----------------------------	")
			);
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
minimun_lex(list) = 
{
	my(i,n,mini);
	n = # list;
	mini = list[1];
	for( i = 1,n,
		if( lift(list[i][1][1]) < lift(mini[1][1]),
			mini = list[i];
		,
			if ( lift(list[i][1][1]) == lift(mini[1][1]),
				if ( lift(list[i][1][2]) < lift(mini[1][2]),
					mini = list[i];
				);
			);
		);
	);
	return(mini);
}

/* détection et correction des cycles court de longueurs n */

fruitless_cycles(n,list) = 
{
	my(l,elements = [],i,tmp,tmp_el,a,b);
	l = # list;
	/*print(lift(list));*/
	if ( list[l][1] == list[l-n][1],
		print("fruitless detect");
		affiche_list(list);
		print("<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		for( i = 0, n-1,
			elements = concat(elements,[list[l-i]]);
		);
		tmp =  minimun_lex(elements);
		W = ellpow(E,tmp[1],2);
		if (lift(W[2]) % 2 == 1, W = [W[1],W[2]] );
		a = 2*tmp[2];
		b = 2*tmp[3];
		tmp_el = [W,a,b];
	,
/*		print("no fruitless");*/
		tmp_el = list[l];
		
	);
	return(tmp_el);
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
