\r newban_multi.gp
for(i=1,18,random());

/* enregistre dans le fichier "  " courbe allant de parametre[3] bit à parametre[4] bit
	 test sur parametre[5] courbe avec parametre[6] test par courbe  */
a = 42;
b = 42;
c = 25;
d = 10;
v = 4;
name = Strprintf("temp-%d-%d_curve-%d_test-%d-multi_v-%d",a,b,c,d,v);

do_1(rho_p_V5,name,a,b,c,d)
