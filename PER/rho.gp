		/* x = a*P + b*Q */
f(x,P,Q,a,b,l,E) = {

	my(W2,c);
	c = Mod(a+b,3);
	if ( c == 0, W2 = elladd(E,x,P); a = (a+1) % (l-1); );
	if ( c == 1, W2 = elladd(E,x,x); a = (a+1) %(l-1); b = (b+1) % (l-1); );
	if ( c == 2, W2 = elladd(E,x,Q); b = (b+1) % (l-1); );
	return([W2,a,b]);
}


/* à vérifier */
rho_p(E,P,Q,l) = {
	
	my(a0,b0,W1,W2,c,a1,b1,i = 0);
	/* initialisation */
	/* P et f(P) */
	a0 = 1 % l;		/* random(l);*/
	b0 = 0 % l;   	 	/* random(l);*/
	P =  elladd(E, ellpow(E,P,a0), ellpow(E,Q,b0));
	a1 = a0;
	b1 = b0;
	W1 = P;
 	c = Mod(a0+b0,3);
	if ( c == 2, W2 = elladd(E,W1,P); a1 = (a1+1) );
	if ( c == 1, W2 = elladd(E,W1,W1); a1 = (2*a1) ; b1 = (2*b1) ; );
	if ( c == 0, W2 = elladd(E,W1,Q); b1 = (b1+1); );
	while( W1 != W2 , 
		i = i+1;

		a0 = a1;
		b0 = b1;
		W1 = W2;

	 	c = Mod( a1 + b1 ,3);
		if ( c == 2, W2 = elladd(E,W2,P); a1 = (a1+1) ; );
		if ( c == 1, W2 = elladd(E,W2,W2); a1 = (2*a1); b1 = (2*b1) ; );
		if ( c == 0, W2 = elladd(E,W2,Q); b1 = (b1+1) ; );

      );
/* if ( i > l, print("echec tps en p ----------------------------"); return(0));*/
      if ( b0 - b1 == 0 % l,
		print("failled");
		,
		c = Mod(b1-b0,l);
		/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
		if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			return(i);
		,
			print("failled ellpow ------------------------------------------")
		);
	);		
}

rho_p_v2(E,P,Q,l) = {
	
	my(a0,b0,W1,W2,c,a1,b1,i = 0);
	/* initialisation */
	/* P et f(P) */
	a0 = random(l);
	b0 = random(l);
	P =  elladd(E, ellpow(E,P,a0), ellpow(E,Q,b0));
	a1 = a0;
	b1 = b0;
	W1 = P;
 	c = Mod(a0+b0,3);
	if ( c == 2, W2 = elladd(E,W1,P); a1 = (a1+1) );
	if ( c == 1, W2 = elladd(E,W1,W1); a1 = (2*a1) ; b1 = (2*b1) ; );
	if ( c == 0, W2 = elladd(E,W1,Q); b1 = (b1+1); );
	print(W1,W2);
	while( W1 != W2 && i < 2*l, 
		i = i+1;

	 	c = Mod( a0 + b0 ,3);
		if ( c == 2, W1 = elladd(E,W1,P); a0 = (a0+1) ; );
		if ( c == 1, W1 = elladd(E,W1,W1); a0 = (2*a0) ; b0 = (2*b0); );
		if ( c == 0, W1 = elladd(E,W1,Q); b0 = (b0+1) ; );

		/* W2 = f°f(W2) */
	 	c = Mod( a1 + b1 ,3);
		if ( c == 2, W2 = elladd(E,W2,P); a1 = (a1+1) ; );
		if ( c == 1, W2 = elladd(E,W2,W2); a1 = (2*a1); b1 = (2*b1) ; );
		if ( c == 0, W2 = elladd(E,W2,Q); b1 = (b1+1) ; );
	 	c = Mod( a1 + b1 ,3);
		if ( c == 2, W2 = elladd(E,W2,P); a1 = (a1+1) ; );
		if ( c == 1, W2 = elladd(E,W2,W2); a1 = (2*a1); b1 = (2*b1) ; );
		if ( c == 0, W2 = elladd(E,W2,Q); b1 = (b1+1); );

      );
      if (i == 2*l, print("echec tps en p-------------------------------"); return(0));
      print(i);
      print([a0%l,b0%l,a1%l,b1%l]);
	if ( (b0 - b1) % l == 0,

		print("failled");
		,
		c = Mod(b1-b0,l);
		/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
		if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			return(i);
		,
			print("failled ellpow")
		);
	);		
}

rho_p_v3(E,P,Q,l) = {
	
	my(a0,b0,W1,W2,c,a1,b1,i = 0);
	/* initialisation */
	/* P et f(P) */
	a0 = 1;
	b0 = 0;
	P =  elladd(E, ellpow(E,P,a0), ellpow(E,Q,b0));
	a1 = a0;
	b1 = b0;
	W1 = P;
 	c = Mod(a0+b0,3);
	if ( c == 2, W2 = elladd(E,W1,P); a1 = (a1+1) );
	if ( c == 1, W2 = elladd(E,W1,W1); a1 = (2*a1) ; b1 = (2*b1) ; );
	if ( c == 0, W2 = elladd(E,W1,Q); b1 = (b1+1); );
	while( W1 != W2 && i <10, 
		i = i+1;
		print([W1,W2]);
		print([a0%l,b0%l,a1%l,b1%l]);
		/* W1 = f(W1) */

	 	c = Mod( a0 + b0 ,3);
		if ( c == 2, W1 = elladd(E,W1,P); a0 = (a0+1) ; );
		if ( c == 1, W1 = elladd(E,W1,W1); a0 = (2*a0) ; b0 = (2*b0); );
		if ( c == 0, W1 = elladd(E,W1,Q); b0 = (b0+1) ; );

		/* W2 = f°f(W2) */
	 	c = Mod( a1 + b1 ,3);
		if ( c == 2, W2 = elladd(E,W2,P); a1 = (a1+1) ; );
		if ( c == 1, W2 = elladd(E,W2,W2); a1 = (2*a1); b1 = (2*b1) ; );
		if ( c == 0, W2 = elladd(E,W2,Q); b1 = (b1+1) ; );
	 	c = Mod( a1 + b1 ,3);
	
		if ( c == 2, W2 = elladd(E,W2,P); a1 = (a1+1) ; );
		if ( c == 1, W2 = elladd(E,W2,W2); a1 = (2*a1); b1 = (2*b1) ; );
		if ( c == 0, W2 = elladd(E,W2,Q); b1 = (b1+1); );
 
      );
	print(" i = :",i);
	
	if ( b0 - b1 == 0 % l,

		print("failled");
		,
		c = Mod(b1-b0,l);
		/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
		if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			return(i);
		,
			print("failled ellpow")
		);
	);		
}


func(E,W2,P,Q,a,b,n) = {

                my(c);
		c = Mod(lift(W2[1]),3);

                if ( c == 0, W2 = elladd(E,W2,Q); b=(b+1)%n;);
                if ( c == 1, W2 = elladd(E,W2,W2); a=(a+a)%n;b=(b+b)%n;);
                if ( c == 2, W2 = elladd(E,W2,P); a=(a+1)%n;);
                return([W2,P,Q,a,b]);

}


rho_p_V4(E,P,Q) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0);
        	n = ellorder(E,P);
		W1 = P;
		a0 = 1; b0 = 0;
		tmp = func(E,W1,P,Q,a0,b0,n);		
		W2 = tmp[1];
		a1 = tmp[4]; b1 = tmp[5];
		while(W1 != W2,
			 
			 tmp = func(E,W1,P,Q,a0,b0,n);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];

			 tmp = func(E,W2,P,Q,a1,b1,n);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 tmp = func(E,W2,P,Q,a1,b1,n);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 i = i+1;
			 print(i);
			 print(lift([W1,W2]));
		);

		if ( (b0 - b1) % n == 0 ,
		
			print("failled");
		,
			c = Mod(b1-b0,n);
							/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
			if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			   	print("reussit i = ");
				return(i);
			,
				print("failled ellpow")
			);
		);		
}


rho_p_V5(E,P,Q) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0);
       	n = ellorder(E,P);
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));
		tmp = func(E,W1,P,Q,a0,b0,n);		
		W2 = tmp[1];
/*		print(W1,W2,n);*/
		a1 = tmp[4]; b1 = tmp[5];
		while(W1 != W2,
			 
			 tmp = func(E,W1,P,Q,a0,b0,n);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];

			 tmp = func(E,W2,P,Q,a1,b1,n);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 tmp = func(E,W2,P,Q,a1,b1,n);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 i = i+1;
		);
/*		print(W1,W2,n);
		print(i);
		print([a0,b0,a1,b1,n]);
*/		if ( (b0 - b1) % n == 0 ,
		
			print("failled");
		,
			c = Mod(b1-b0,n);
							/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
			if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			   	print("reussit i = ");
				return(i);
			,
				print("failled ellpow")
			);
		);		
}		

/* fonction pour l'utilisation de la negation map */

func_negation(E,W2,P,Q,a,b,n) = {

		        my(c);
				c = Mod(lift(W2[1]),3);

                if ( c == 0, W2 = elladd(E,W2,Q); b=(b+1)%n;);
                if ( c == 1, W2 = elladd(E,W2,W2); a=(a+a)%n;b=(b+b)%n;);
                if ( c == 2, W2 = elladd(E,W2,P); a=(a+1)%n;);
				if ( lift(W2[2]) > (lift(- W2[2]) % n), W2[2] = -W2[2]; a = -a %n; b = -b % n);
                return([W2,P,Q,a,b]);

}


/* negation map	*/

rho_p_V6(E,P,Q) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0);
       	n = ellorder(E,P);
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));
		tmp = func_negation(E,W1,P,Q,a0,b0,n);		
		W2 = tmp[1];
		a1 = tmp[4]; b1 = tmp[5];
		while(W1 != W2,
			 
			 tmp = func_negation(E,W1,P,Q,a0,b0,n);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];

			 tmp = func_negation(E,W2,P,Q,a1,b1,n);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 tmp = func_negation(E,W2,P,Q,a1,b1,n);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 i = i+1;
		);
/*		print(i);
		print([a0,b0,a1,b1,n]);*/
		if ( (b0 - b1) % n == 0 ,
		
			print("failled");
		,
			c = Mod(b1-b0,n);
							/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
			if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			   	print("reussit i = ");
				return(i);
			,
				print("failled ellpow")
			);
		);		
}		


ellrand(E,p,m) = {

	Q=ffgen(ffinit(p,m));

	/* E[1].mod renvoit le modulo de e[1] */

	n=random(Q);
	m=random(Q);
	/* utilisation de ellisoncurve a revoir */
	while(ellisoncurve(E,[n,m])==0,	
						n=random(Q);
						m=random(Q);
	);
	return([n,m]);
}

/* tout kes point sur Fp ici q = 1 */

point_curve_q(E,p,k) = {

	my(i,j,y,x,u);
	my(l_point);
	w = ffprimroot(ffgen(ffinit(p,k)));
	l_point = [[0]];
	for(i = 0, p^k -1,

		x = w^i;
		if( i==0, x=Mod(0,p));

		
		for(j = 0, p^k-1,
			y = w^j;
			if( j == 0, y = 0);
			if( ellisoncurve(E,[x,y]) == 1, 
				l_point = concat( l_point,[[x,y]]);
			);
		);
				

		/*
		y = x^3 + E[4]*x + E[5];
		if( issquare(y,&u), 
			if( y != -y , l_point = concat( l_point, [[x,u]] );
				  l_point = concat( l_point, [[x,-u]] );
			,
			    	  l_point = concat( l_point, [[x,u]] );
			);
		);
			*/
	);



	return(l_point);
}

f_p(x,a,b,p,alpha,beta) = {

	c = Mod(x,3);
	if ( c == 0, a = 2*a % (p-1); b = 2*b % (p-1); x = x*x % p; );
	if ( c == 1, a = a+1 % (p-1); b = b % (p-1); x = alpha*x % p);
	if ( c == 2, a = a % (p-1); b = b+1 % (p-1); x = beta*x % p);
	return([x,a,b]);

}

rho_n(x,y,p) = {
	
	my(w,z,a,b,tmp,i);
	i = 1;	

	w = x;
	a0 = 1;
	b0 = 0;
	print([w,a0,b0]);
	tmp = f_p(w,a0,b0,p,x,y);
	z = tmp[1];
	a1 = tmp[2];
	b1 = tmp[3];
	while( z!=w ,
		print("debut ",[w,z]);
		
		tmp = f_p(w,a0,b0,p,x,y);
		w = tmp[1];
		a0 = tmp[2];
		b0 = tmp[3];
		tmp = f_p(z,a1,b1,p,x,y);
		z = tmp[1];
		a1 = tmp[2];
		b1 = tmp[3];
		tmp = f_p(z,a1,b1,p,x,y);
		z = tmp[1];
		a1 = tmp[2];
		b1 = tmp[3];

		print([z,a1,b1]);

	);

	print([w,a0,b0,z,a1,b1]);
	return(0);
}




/* icic on prende f tq f(x) = x^2 + 1; */
/* on travail dans Fp */
/* q = r^x mdo p */
lambda(p,q,r) = {

	a = 0;
	b = p-1;
	x = [r^b];
	for( i=1, p, 
		x = concat(x,[x[i]*r^(x[i]*x[i] + 1 % p-1 )]);		
	);
	

}

