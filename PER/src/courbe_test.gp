/* this file generate a courbe sur Fp with p is fixed */
\r initialisation_courbe.gp

p = 40;

system("rm -f courbe.gp");
p = prem_n_bit(p);
E = courbe_ell_Fp(p);
P = random(E);
Q = random(E);

write("courbe.gp","E = ",E,"\n","P = ",P,"\n","Q = ",Q);
