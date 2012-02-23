\r algo_rho_parallele.gp
 for(i=1,1630,random(););
 \r courbe.gp;
for( i = 1, 10000000000,	tmp = rho(E,P,Q);write("../test/points_remarquables.txt",lift(tmp)););
