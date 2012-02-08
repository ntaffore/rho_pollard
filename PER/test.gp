	/*Q=[Mod(147,173),Mod(74,173)]
P=[Mod(168,173),Mod(133,173)]
E=ellinit([0,0,0,Mod(146,173),Mod(33,173)])

a = [ [12,15],[15,16],[484,494],[9,49],[9,4],[84,84],[512,15],[455,4],[8,414],[68,48],[468,468],[4,15]];
*/


pollard(E,P,Q) = {
	my(a,b,U,V,i,j,k,l,m,c,e);
	e=ellorder(E,P);
	U=[0];
	V=P;
	i=1; j=0;
	a=1; b=0;
	while(U!=V,
	
	/*	j=i+1; */
	/*	i=2*i;*/
		U=V;
		l=a;
		m=b;
		c=Mod(a+b,3);
		if(c==0, V=elladd(E,V,Q); b=b+1;);
		if(c==1, V=elladd(E,V,V); a=2*a; b=2*b;);
		if(c==2, V=elladd(E,V,P); a=a+1;);
		j=j+1;
/*		print([U,V]);*/
		/*
		while(U!=V && j<=i,
		
			c=Mod(a+b,3);
			if(c==0, V=elladd(E,V,Q); b=b+1;);
			if(c==1, V=elladd(E,V,V); a=2*a; b=2*b;);
			if(c==2, V=elladd(E,V,P); a=a+1;);
			print("--------> ",[U,V]);
			j=j+1;
		);*/
	
	);
	print([U,V]);
	f = j;	
	i=Mod(a-l,e);
	j=Mod(m-b,e);
	if(gcd(j,e)==1, j=Mod(j^(-1),e); print(f); return(lift(Mod(i*j,e)));)

}
