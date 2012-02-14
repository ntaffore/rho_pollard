/* fichier de test pour avoir les données du temps*/
/* verification que la methode rho de pollard est en racine de p */

\r algo_rho.gp
\r initiation_courbe.gp

dummytest(nbits, npoints, ncurves) = 
{ my(n, E, P, Q);
  n = prem_n_bit(nbits);
  for (i = 1, ncurves,
    E = courbe_ell_Fp(n);
    P = random_point_curve(E);
    for(j = 1, npoints,
      pow = random(n);
      Q = ellpow(E,P,pow);
    )
  );
}

test(fun, nbits, npoints, ncurves) = 
{ my(n, E, P, T0, pow_ex,t_bis = []);
  gettime(); dummytest(nbits, npoints, ncurves); T0 = gettime();
  n = prem_n_bit(nbits);
  for (i = 1, ncurves,
    my(E, P);
    E = courbe_ell_Fp(n);
    P = random_point_curve(E);
    for(j = 1, npoints,
      my(Q);
      Q = ellpow(E, P, random(n));
/*			gettime();*/
      pow_ex += fun(E,P,Q);
/*	  	t_bis = concat(t_bis,[gettime()]); */
    )
  );
/*  print(t_bis);
	T1 = sum(i=1,#t_bis,t_bis[i]);*/
  [gettime() - T0, pow_ex];
	/*	[ T1 - T0, pow_ex]; */
	/* [t_bis,pow_ex];*/
}

do(fun, file) = 
{ my(FILE = Str("/tmp/", file));
  system(Str("rm -f ", FILE));
  for (n = 35, 35,
    my(v,pow_ex,T,N);
    v = test(fun, n, 4, 10);
    pow_ex = v[2];
    T      = v[1]; if (!T, next);
    N      = 4. * 10; 
    printf("n = %d, pow_ex = %.1f\n", n, pow_ex / N);
    /*write(FILE, n, " ", Strprintf("%.2f", log(T)/log(2) / N));*/
		write(FILE, n, " ", Strprintf("%.2f", T / N));
		/*		write(FILE, n, " ");
		for (j = 1, #T,
			if ( T[j] == 0 ,
				write(FILE, "0", " ");
			,
				write(FILE, Strprintf("%.2f", log(T[j])/log(2)), " ");
		)
		*/
  );
}

do(rho_p_V5, "temptest-3");
