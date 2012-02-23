\r initialisation_courbe.gp

system("rm -f courbe.gp");
p = prem_n_bit(50);
E = courbe_ell_Fp(p);
P = random(E);
Q = random(E);

write("courbe.gp","E = ",E,"\n","P = ",P,"\n","Q = ",Q);
