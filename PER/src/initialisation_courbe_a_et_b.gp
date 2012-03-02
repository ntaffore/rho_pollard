/* function for initialization of elliptic curve */
/* the equation is y^2 = x^3 + a*x + b with a,b in Fp */

/* function return a prime number between 2^n and 2^(n-1) */
prem_n_bit(n) = {

	my(p);
	p = 0;
	while( isprime(p) != 1,
		p = random(2^(n-1)) + 2^(n-1);
	);
	return(p);
}

/* this function generate a elliptic curve on Fp and the order of this curve
	is a prime number */
courbe_ell_Fp(n)  = {
	
	my(a,b,E,prem);
	a = random(n);
	b =random(n);

	prem = 0;
	while(prem != 1,	 /* for a prime order of elliptic curve */ 
		while ( -16*(4*(a)^3 + 27 * b^2)	 % n == 0,
			b = random(n)
		);
		E = ellinit([0,0,0,Mod(a,n),Mod(b,n)]);
		if( isprime(ellgroup(E)[1]) == 1, prem = 1;);
		b = random(n);
	);
	return(E);
}

/* this function generate a elliptic curve on Fp */
courbe_ell_Fp_V2(n)  = {
	
	my(b,E);
	b =random(n);

	while ( -16*(4*(-3)^3 + 27 * b^2)	 % n == 0,
			b = random(n)
	);
	E = ellinit([0,0,0,Mod(-3,n),Mod(b,n)]);
	return(E);
}

/* this function search a generator of elliptic curve */
random_point_curve(E) = {

	my(P,n,x,check,i=0);
	n = E[5].mod;
	x = Mod(random(n),n);
	check = 0;
	while( #ellordinate(E,x) == 0 || check != 1,
		if ( #ellordinate(E,x) != 0,
			P = [x,ellordinate(E,x)[1]];
			print("p");
			if ( ellorder(E,P) > (n - 2*sqrt(n)),
				check = 1
			,
				x = Mod(random(n),n);
			);
		,
			x = Mod(random(n),n);
			print(i);
			i++;
		);
	);
	return(P);
}
