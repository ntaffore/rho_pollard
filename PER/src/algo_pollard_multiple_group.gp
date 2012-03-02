/* table of r random elements in E */
table(E,P,Q,r) = {

	my(i,a,b,n,list);
	n = ellorder(E,P);
	list = [];
	for(i=1,r,
		a = random(n);
		b = random(n);
		/* the random elements of e is a combination of P and Q */
		W = elladd(E,ellpow(E,P,a),ellpow(E,Q,b));
		list = concat(list,[[W,a,b]]);
	);

	return(list);
}

/* function that simulate a random walks */

func(E,W,P,Q,a,b,n,list,r) = {

                my(c);
				c = lift(W[1]) % r;
				c = c + 1;
				W = elladd(E,W,list[c][1]);
				a = (a + list[c][2] ) % n;
				b = (b + list[c][3] ) % n;
                return([W,P,Q,a,b]);
}

/*  function that compute the discret logarithm on E of Q with P as generator.
	In this algorithm, r is the number of group for the random walks */

rho(E,P,Q,r) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0,list);

       	n = ellorder(E,P);
		/* initialization of random walks elements */
		list = table(E,P,Q,r);

		/* initialization of W1 and W2 */
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));
		tmp = func(E,W1,P,Q,a0,b0,n,list,r);		
		W2 = tmp[1];
		a1 = tmp[4];
		b1 = tmp[5];

		/* loop that looks for collisions */
		while(W1 != W2,
			 
			 /* W1 */
			 tmp = func(E,W1,P,Q,a0,b0,n,list,r);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];

			 /* W2 */
			 tmp = func(E,W2,P,Q,a1,b1,n,list,r);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 tmp = func(E,W2,P,Q,a1,b1,n,list,r);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 i = i+1;
		);

		/* if we have a unusefull collision */
		if ( (b0 - b1) % n == 0 ,
			print("failled");
			return(0);
		,
			c = Mod(b1-b0,n);
			/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
			/* test if is the good x */
			if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			   	print("check ");
				/* return of L describe by Teske */
				return(i/sqrt(n));
			,
				print("failled ellpow");
				return(0);
			);
		);		
}		

