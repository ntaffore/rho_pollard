\r newban_multi.gp

/* enregistre dans le fichier "  " courbe allant de parametre[3] bit à parametre[4] bit
	 test sur parametre[5] courbe avec parametre[6] test par courbe  */
a = 40;
b = 41;
c = 2;
d = 5;
v = 3;
name = Strprintf("temp-%d-%d_curve-%d_test-%d-multi_v-%d",a,b,c,d,v);

do_1(rho_p_V5,name,a,b,c,d)
