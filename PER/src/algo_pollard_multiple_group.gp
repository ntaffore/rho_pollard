/* table de R element aleatoire dans P */
table(E,P,Q,r) = {

	my(i,a,b,n,list);
	n = ellorder(E,P);
	list = [];
	for(i=1,r,
		a = random(n);
		b = random(n);
		W = elladd(E,ellpow(E,P,a),ellpow(E,Q,b));
		list = concat(list,[[W,a,b]]);
	);

	return(list);
}

func(E,W,P,Q,a,b,n,list,r) = {

                my(c);
				c = lift(W[1]) % r;
				c = c + 1;
				W = elladd(E,W,list[c][1]);
				a = (a + list[c][2] ) % n;
				b = (b + list[c][3] ) % n;
                return([W,P,Q,a,b]);
}

rho_p_V5(E,P,Q) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0,r,list);

		/* parametre */
		r = 20;

       	n = ellorder(E,P);
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));
		list = table(E,P,Q,r);
		tmp = func(E,W1,P,Q,a0,b0,n,list,r);		
		W2 = tmp[1];
		a1 = tmp[4]; b1 = tmp[5];
		while(W1 != W2,
			 
			 tmp = func(E,W1,P,Q,a0,b0,n,list,r);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];

			 tmp = func(E,W2,P,Q,a1,b1,n,list,r);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 tmp = func(E,W2,P,Q,a1,b1,n,list,r);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 i = i+1;
		);

		if ( (b0 - b1) % n == 0 ,
		
			print("failled");
		,
			c = Mod(b1-b0,n);
						/*return(	(lift(Mod(a0-a1,l)))*c^-1);*/
			if (ellpow(E,P,lift((a0-a1)*c^-1)) == Q,
			   	print("reussit ");
				return(i/sqrt(n));
			,
				print("failled ellpow -----------------------------	")
			);
		);		
}		

