	/* fonction permettant de faire des courbe elliptique */

/* sur Fp de la forme y^2 = x^3 -3*x +b */

prem_n_bit(n) = {

	my(p);
	p = 0;
	while( isprime(p) != 1,
		p = random(2^(n-1)) + 2^(n-1);
	);
	return(p);
}

courbe_ell_Fp(n)  = {
	
	my(b,E,prem);
	b =random(n);

	prem = 0;
	while(prem != 1,	 /* pour avoir une courbe de card prem */
		while ( -16*(4*(-3)^3 + 27 * b^2)	 % n == 0,
			b = random(n)
		);
		E = ellinit([0,0,0,Mod(-3,n),Mod(b,n)]);
		if( isprime(ellgroup(E)[1]) == 1, prem = 1;);
		b = random(n);
	);
	return(E);
}

courbe_ell_Fp_V2(n)  = {
	
	my(b,E);
	b =random(n);

	while ( -16*(4*(-3)^3 + 27 * b^2)	 % n == 0,
			b = random(n)
	);
	E = ellinit([0,0,0,Mod(-3,n),Mod(b,n)]);
	return(E);
}

/* generateur de la courbe */
/* fonction random(E) */
random_point_curve(E) = {
	return(random(E));
}


