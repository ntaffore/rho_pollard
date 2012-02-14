/* algoithme de floyd poyur comprendre la collision rapide a(i) = a(2i) */

/* fonction f */


func(E,W2,P,Q,a,b) = {

		my(c,n);
		c = Mod(lift(W2[1]),3);
		n = ellorder(E,P);
		if ( c == 0, W2 = elladd(E,W2,Q); b=(b+1)%n;);
		if ( c == 1, W2 = elladd(E,W2,W2); a=(a+a)%n;b=(b+b)%n;);
		if ( c == 2, W2 = elladd(E,W2,P); a=(a+1)%n;);
		return([W2,P,Q,a,b]);

}


/* foncion qui ecrit les cycle */
cycle_floyd(E,P,Q) = {
		 
		 my(tab,n);
		 n = ellorder(E,P);
		 tab = [];
		 W = P;
		 a = 1;
		 b = 0;
		 for(i=1,n,
			tmp = func(E,W,P,Q,a,b);
			W = tmp[1];
			a = tmp[4];
			b = tmp[5];
 			tab = concat(tab,[W]);
  		 );
		 return(tab);
			
}
