\r algo_rho_parallele.gp
for(i=1,4599,random(););
\r courbe.gp;
print(E);print(P);
verif(E,P,Q,W,a,b) = {
if ( elladd(E,ellpow(E,P,a),ellpow(E,Q,b)) == W,
print("verifiée");,
print("ereur-----------------------------------------"););}
for( i = 1, 10000000000,	if (tmp != [], tmp = rho(E,P,Q); verif(E,P,Q,tmp[1],tmp[2],tmp		[3]);write("../test/points_remarquables_4.txt",tmp);););
