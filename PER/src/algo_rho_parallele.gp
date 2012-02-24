/* fonction qui interprète une marche aléatoire */

func(E,W2,P,Q,a,b,n) = {

                my(c);
				c = Mod(lift(W2[1]),3);

                if ( c == 0, W2 = elladd(E,W2,Q); b=(b+1)%n;);
                if ( c == 1, W2 = elladd(E,W2,W2); a=(a+a)%n;b=(b+b)%n;);
                if ( c == 2, W2 = elladd(E,W2,P); a=(a+1)%n;);

                return([W2,P,Q,a,b]);
}

/* cette algorithme renvoit un point remarcable de la courbe */
/* 1ère def point remarquable : x à p/3 0 de poids faible */

rho(E,P,Q) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0);
       	n = ellorder(E,P);
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));
		while( test_remarquable(E,W1) != 1 && i < n ,
			 
			 tmp = func(E,W1,P,Q,a0,b0,n);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];
/*			 print("i ",i," n ",n);*/
			 i = i+1;
		);
		if( i > n ,
			return([]);
			/*print("many");*/
		,
			return([W1,a0,b0,i]);
		);
}		

/* test pour voir si on a un point remarquable */
test_remarquable(E,W) = {
	
	my(p,n);
	p = floor(log(E[4].mod)/log(2)) + 1;
	n = floor(p/3);
	n = 8;
	if ( lift(W[1]) % 2^n == 123456789 % 2^n, return(1), return(0));

}

point_ramarquable_x(E,P,n,prop) = {
	my(p,count = 0, x,i,tmp);
	p = P[1].mod;
	i = 0;
	x = ( prop % 2^n) +i*2^n;
	while ( x < p,
		tmp = ellordinate(E,x);
/*		print(tmp);
		print(count);
		system("sleep 5");*/
		count += #tmp;
		i++;
		x = ( prop % 2^n) +i*2^n;
	);
	return(count);
}

/* probabilité de trouver un point remarquable */
/* avec test */
proba_remarquable(E,P) = {

	my(o,count = 0);
	o = ellorder(E,P);
	W = [0];
	for(i = 1, o,
		W = elladd(E,W,P);
		if( test_remarquable(E,W) == 1, count++);
	);

	return(count);
}
