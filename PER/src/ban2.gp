\r newban.gp
for(i=1,323,random());


/* enregistre dans le fichier "  " courbe allant de parametre[3] bit à parametre[4] bit
	 test sur parametre[5] courbe avec parametre[6] test par courbe  */
a = 43;
b = 43;
c = 25;
d = 5;
v = 2;
name = Strprintf("temp-%d-%d_curve-%d_test-%d-normal_v-%d",a,b,c,d,v);

do_1(rho_p_V5,name,a,b,c,d)

