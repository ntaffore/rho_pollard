/* fichier de test pour avoir les données du temps*/
/* verification que la methode rho de pollard est en racine de p */

\r algo_rho.gp
\r initialisation_courbe_a_et_b.gp

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

test(fun, nbits, npoints, ncurves) = 
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
      pow_ex += fun(E,P,Q);
    )
  );
 [gettime() - T0, pow_ex];
}

do_1(fun, file, borninf, bornsup, nbcurve, nbtest,nbgroup) = 
{
  my(FILE = Str("../test/", file));
  system(Str("rm -f ", FILE));
  for (n = borninf, bornsup,
    my(v,pow_ex,T,N);
    v = test(fun, n, nbcurve, nbtest);
    pow_ex = v[2];
    T      = v[1]; if (!T, next);
    N      = nbcurve * nbtest; 
    printf("n = %d, pow_ex = %.1f\n", n, pow_ex / N);
	write(FILE, n, " ", Strprintf("%.2f", log(T / N)/log(2)));
  );
}

