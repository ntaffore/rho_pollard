/* fonction  qui calcule un log discret avec la; méthode rho de pollard */
/* P est le génératuer d'ordre l */
/* version Z/PZ */

/* deux nombre a,ab et groupe ordre l */
/* on cherche c tq a^c = b (l) */
log_dicret_pollard_rho(a,b,l) = {
	
	/* ici f(x) = x*x */
	

}

/* x = a*P + b*Q */
f(x,P,Q,a,b,E) = {

	if ( Mod(a+b) == 0, W = elladd(E,x,P); a = a+1; );
	if ( Mod(a+b) == 1, W = elladd(E,x,x); a = a+1; b = b+1; );
	if ( Mod(a+b) == 2, W = elladd(E,x,Q); b = b+1; );

	return([W,a,b]);
}

pollard(E,P,Q,p,m) = {
	my(a=1);
	my(b=0);
	my(i=1);
	my(w=P);
	my(w1=elladd(E,w,w));
	my(a1=2);
	my(b1=0);
	print(i);
	while( w!=w1 ,
			w=w1;
			a=a1;
			b=b1;
			if ( Mod(a1+b1,3) == 0,w1=elladd(E,w1,Q);b1=b1+1);
			if ( Mod(a1+b1,3) == 1,w1=elladd(E,w1,w1);a1=a1*2;b1=b1*2);
			if ( Mod(a1+b1,3) == 2,w1=elladd(E,w1,P);a1=a1+1);
			j=i;
			print(i);
			while(w!=w1 && j < 2*i,
					if ( Mod(a1+b1,3) == 0,w1=elladd(E,w1,Q);b1=b1+1);
					if ( Mod(a1+b1,3) == 2,w1=elladd(E,w1,P);a1=a1+1);
					j=j+1;
			);
			i=2*i;
	);
	o=ellorder(E,P);
	n=lift((Mod((a-a1)*((b1-b)^-1), o )));
	return(n);
					
}

fctegalite(l,w) = {
	my(n=#l);
	my(i);
	for(i=1,n,
				if(l[i]==w,return(1)
				);
	);
	return(0);
}

fctindice(l,w) = {
	my(i=1);
	while(l[i]!=w,i=i+1);
	return(i);
}


/*

pollard(E,P,Q,p,m) = {
	my(a=[1]);
	my(b=[0]);
	my(i=1);
	w=P;
	l=[];
	while(fctegalite(l,w)!=1,
			l=concat(l,[w]);
			if((Mod(a+b,3))==0,
					a=concat(a,[a[i]];
					b=concat(b,[b[i]+1]);
					w=elladd(E,w,Q),

					if((Mod(a+b,3))==2,
							a=concat(a,[a[i]+1];
							b=concat(b,[b[i]]);
							w=elladd(E,w,P), 
							a=concat(a,[a[i]+1];
							b=concat(b,[b[i]+1]);
							w=elladd(E,w,w);
					);
			);
			i=i+1;
	);
	o=ellorder(E,P);
	k=fctindice(l,w);

	n=( Mod( (a[k]-a[i])*(b[i]-b[k])^-1 , o ) );
	return(n);
}
*/
/* a finir boucle infini non corriger*/
pollard2(E,P,Q,p,m) = {

	my(a=1);
	my(b=0);
	my(i=2);
	my(w=P);
	my(w1=elladd(E,w,w));
	my(a1=2);
	my(b1=0);
	while( w!=w1 ,
			/*w=w1;
			a=a1;
			b=b1;*/

			if ( Mod(a+b,3) == 0,w=elladd(E,w,Q);b=b+1);
			if ( Mod(a+b,3) == 1,w=elladd(E,w,w);a=a*2;b=b*2);
			if ( Mod(a+b,3) == 2,w=elladd(E,w,P);a=a+1);
			j=i;
			k=2^floor(log(i));
			print(i);print(k);
			w1=w;
			a1=a;
			b1=b;
			while(/*w!=w1 &&*/ j > k,
					if ( Mod(a1+b1,3) == 0,w1=ellsub(E,w1,Q);b1=b1-1);
					if ( Mod(a1+b1,3) == 1,w1=ellsub(E,w1,w1);a1=a1/2;b1=b1/2);
					if ( Mod(a1+b1,3) == 2,w1=ellsub(E,w1,P);a1=a1-1);
					j=j-1;
			);
			i=i+1;
	);
	o=ellorder(E,P);
	n=lift((Mod((a-a1)*((b1-b)^-1), o )));
	return(n);
	
}
