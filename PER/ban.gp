/* fichier de test pour avoir les donné du temps*/

/*fichier a charger */
\r rho.gp
\r initiation_courbe_a_et_b.gp

/* verification que la methode rho de pollard en en racine de p */

print("-------------------------------------------------------------------");
print("n = 6");

/* création de la courbe elliptique */
n = prem_n_bit(6);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(6);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(6);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(6);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(6);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(6);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(6);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(6);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#


print("-------------------------------------------------------------------");
print("n = 7");

/* création de la courbe elliptique */
n = prem_n_bit(7);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(7);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(7);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(7);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(7);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(7);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(7);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(7);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#


print("-------------------------------------------------------------------");
print("n = 8");

/* création de la courbe elliptique */
n = prem_n_bit(8);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(8);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(8);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(8);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(8);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#


print("-------------------------------------------------------------------");
print(" n = 9");

/* création de la courbe elliptique */
n = prem_n_bit(9);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#



print("-------------------------------------------------------------------");
print(" n = 10");

/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print(P);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(10);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#



print("------------------------------------------------------");
print("n = 12");

/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(12);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#


print(" -----------------------------------------------------------------");
print("n = 14");

/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(14);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#


print("----------------------------------------------------------");
print("n = 16");

/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
/* création de la courbe elliptique */
n = prem_n_bit(16);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#


print(" -------------------------------------------------------------");
print(" n = 18");

/* création de la courbe elliptique */
n = prem_n_bit(18);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(18);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(18);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(18);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(18);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#


print("-------------------------------------------------------------------------------");
print(" n = 20");

/* création de la courbe elliptique */
n = prem_n_bit(20);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(20);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(20);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(20);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(20);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

print("-----------------------------------------------------------------------")
print("n = 21");

/* création de la courbe elliptique */
n = prem_n_bit(21);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(21);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(21);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(21);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#


print("------------------------------------------------------------------------------")
print("n = 22");

/* création de la courbe elliptique */
n = prem_n_bit(22);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(22);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(22);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

/* création de la courbe elliptique */
n = prem_n_bit(22);
E = courbe_ell_Fp(n);

/* prise d'un point aleatoire sur E */
P = random_point_curve(E);
pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

pow = random(n);
print([n,pow]);
Q = ellpow(E,P,pow);

/* demarage du compteur temps */
#
pow_exp = rho_p_V5(E,P,Q);

/* fin du temp */
#

print("fin du test");
