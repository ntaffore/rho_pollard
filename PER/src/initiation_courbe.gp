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

random_point_curve_V2(E) = {
	
	my(n,x,y);
	n = E[4].mod;
	x = random(n);
	y = random(n);
	P = [Mod(x,n),Mod(y,n)];
	while(ellisoncurve(E,P)!=1,
		x = random(n);
	        y = random(n);
	        P = [Mod(x,n),Mod(y,n)];
	);
	return(P);    
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
/* utilisation de la borne de hasse */
/* fonction ellordinate */
/* fonction random(E) */
random_point_curve(E) = {
	
	my(P,n,x,y,u,check);
	n = E[4].mod;
	x = random(n);
	Y = Mod( x^3 + lift(E[4]) * x + lift(E[5]) , n);
	check = 0;
	while( issquare(Y,&u) != 1 || check != 1,
        check = 0;
		x = random(n);
		Y = Mod( x^3 + lift(E[4]) * x + lift(E[5]) , n);
		P = [Mod(x,n),Mod(lift(u),n)];
		if ( ellorder(E,P) > (n - 2*sqrt(n)), check = 1);
	);
	P = [Mod(x,n),Mod(lift(u),n)];
	return(P);    
}

