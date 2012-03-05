/* test file for data time */
/* check the multi group method for random walk in methode of pollard's rho */

\r algo_pollard_multiple_group.gp
\r initialisation_courbe.gp
/* this function is empty for compare it time with a function is not empry */
dummytest(nbits, npoints, ncurves) = 
{ 
	my(n, E, P, Q);
  n = prem_n_bit(nbits);
  for (i = 1, ncurves,
    E = courbe_ell_Fp(n);
    P = random(E);
    for(j = 1, npoints,
      pow = random(n);
      Q = ellpow(E,P,pow);
    )
  );
}

/* fun is the name of the algorithm 
   nbit is the bit's nummber of p for know Fp 
   npoint is the number of point that we test for each curve 
   ncurves is the number of curve that we test
   r is the number of group for the random walks */

test(fun, nbits, npoints, ncurves,r) = 
{ 
  my(n, E, P, T0, pow_ex,t_bis = []);
  gettime(); dummytest(nbits, npoints, ncurves); T0 = gettime();
  n = prem_n_bit(nbits);
  for (i = 1, ncurves,
    my(E, P);
    E = courbe_ell_Fp(n);
    P = random(E);
    for(j = 1, npoints,
      my(Q);
      Q = ellpow(E, P, random(n));
      pow_ex += fun(E,P,Q,r);
    )
  );
  [gettime() - T0, pow_ex];
}

/* borninf and bornsup are the bound of bit of p */

do_1(fun, file, borninf, bornsup, nbcurve, nbtest, nbgroupe) = 
{
  my(FILE = Str("../test/", file));
  system(Str("rm -f ", FILE));
  for (n = borninf, bornsup,
    my(v,pow_ex,T,N);
    v = test(fun, n, nbcurve, nbtest, nbgroupe);
    pow_ex = v[2];
    T      = v[1]; if (!T, next);
    N      = nbcurve * nbtest; 
    printf("n = %d, pow_ex = %.1f\n", n, pow_ex / N);
	write(FILE, n, " ", Strprintf("%.2f", log(T / N)/log(2)), " ", pow_ex / N);
  );
}

