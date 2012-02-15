\r newban_multi.gp

/* enregistre dans le fichier "  " courbe allant de parametre[3] bit à parametre[4] bit
	 test sur parametre[5] courbe avec parametre[6] test par courbe  */
a = 10;
b = 30;
c = 4;
d = 8;
v = 1;
name = Strprintf("temp-%d-%d_curve-%d_test-%d-multi_v-%d",a,b,c,d,v);

do_1(rho_p_V5,name,a,b,c,d)
