\r algo_rho_parallele.gp
 
verif(E,P,Q,W,a,b) = {

	if ( elladd(E,ellpow(E,P,a),ellpow(E,Q,b)) == W,
		print("verifiée");
		,
		print("ereur------------------------------------------------------------------------------------------");
	);

}

/* parametre */
E = [0, 0, 0, Mod(614291325310, 614291325313), Mod(533214245606, 614291325313), 0, Mod(614291325307, 614291325313), Mod(289983006485, 614291325313), Mod(614291325304, 614291325313), Mod(144, 614291325313), Mod(21385781166, 614291325313), Mod(337507990479, 614291325313), Mod(226131612883, 614291325313), 0, 0, 0, 0, 0, 0];
P = [Mod(54177895368, 614291325313), Mod(309342966219, 614291325313)];
Q = [Mod(471297859605, 614291325313), Mod(409432112797, 614291325313)];

print(E);
print(P,Q);
/*system("rm -f ../test/points_remarquables.txt");*/

for( i = 1, 10000000000,	tmp = rho(E,P,Q);if(tmp != [] ,verif(E,P,Q,tmp[1],tmp[2],tmp[3]);printf(ellisoncurve(E,tmp[1]));write("../test/points_remarquables.txt",tmp);););

	
