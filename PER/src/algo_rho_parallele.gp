/* function that sumulate the random walks */

func(E,W2,P,Q,a,b,n) = {

                my(c);
				c = Mod(lift(W2[1]),3);

                if ( c == 0, W2 = elladd(E,W2,Q); b=(b+1)%n;);
                if ( c == 1, W2 = elladd(E,W2,W2); a=(a+a)%n;b=(b+b)%n;);
                if ( c == 2, W2 = elladd(E,W2,P); a=(a+1)%n;);

                return([W2,P,Q,a,b]);
}

/* this algorithm return a distingueshed point of the curve E */

rho(E,P,Q,p) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0);
		n = ellorder(E,P);
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));
		while( test_remarquable(E,W1,p) != 1 && i < n ,
			 
			 tmp = func(E,W1,P,Q,a0,b0,n);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];
			 i = i+1;
		);
		if( i > n ,
			return([]);
		,
			return([W1,a0,b0,i]);
		);
}		

/* test if the point is a distingueshed point */
test_remarquable(E,W,n) = {
	
	my(p);
	p = floor(log(E[4].mod)/log(2)) + 1;
	if ( lift(W[1]) % (2^n) == 123456789 % 2^n, return(1), return(0));
}

/* count the number of distingueshed points with the property 'prop' */

point_remarquable_x(E,P,n,prop) = {
	my(p,count = 0, x,i,tmp);
	p = P[1].mod;
	i = 0;
	x = ( prop % 2^n) +i*2^n;
	liste = [];
	while ( x <= p,
		tmp = ellordinate(E,x);
		count += #tmp;
		i++;
		x = (( prop % 2^n) +i*2^n) ;
	);
	return(count);
}

