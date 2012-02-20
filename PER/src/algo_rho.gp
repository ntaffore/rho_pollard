/* fonction qui interprète une marche aléatoire */

func(E,W2,P,Q,a,b,n) = {

                my(c);
				c = Mod(lift(W2[1]),3);

                if ( c == 0, W2 = elladd(E,W2,Q); b=(b+1)%n;);
                if ( c == 1, W2 = elladd(E,W2,W2); a=(a+a)%n;b=(b+b)%n;);
                if ( c == 2, W2 = elladd(E,W2,P); a=(a+1)%n;);

                return([W2,P,Q,a,b]);
}

/* fonciton qui retourve le logarithme discret sur E de Q avec P comme 
   generateur. */

rho(E,P,Q) = {

		my(tmp,n,W1,W2,a0,a1,b0,b1,i=0);
       	n = ellorder(E,P);
		a0 = random(n);
		b0 = random(n);
		W1 = elladd(E,ellpow(E,P,a0),ellpow(E,Q,b0));
		tmp = func(E,W1,P,Q,a0,b0,n);		
		W2 = tmp[1];
		a1 = tmp[4]; b1 = tmp[5];
		while(W1 != W2,
			 
			 tmp = func(E,W1,P,Q,a0,b0,n);
			 W1 = tmp[1];
			 a0 = tmp[4];
			 b0 = tmp[5];

			 tmp = func(E,W2,P,Q,a1,b1,n);
			 W2 = tmp[1];
			 a1 = tmp[4];	
			 b1 = tmp[5];
			 tmp = func(E,W2,P,Q,a1,b1,n);
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
			   	print("check ");
				return(i/sqrt(n));
			,
				print("failled ellpow -----------------------------	")
			);
		);		
}		

