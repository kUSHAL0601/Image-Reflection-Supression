% SOLVE THE EQUATION (mu*L^2 - lambda*L + epsilon)*u = rhs USING DCT [L is LPALACIAN OPERATOR]

function u=solvePoisonDCT(rhs,mu,lambda,epsilon)   
	[r,c]=size(rhs);

	k=1:r;
	l=1:c;
	k=k';

	eN=ones(1,c);
	eM=ones(r,1);

	k=cos(pi/r*(k-1));
	l=cos(pi/c*(l-1));
	k=kron(k,eN);
	l=kron(eM,l);

	kappa=2*(k+l-2);
	const = mu * kappa.^2 - lambda * kappa + epsilon;
	u=dct2(rhs);
	u=u./const;
  % FROM THEOREM 1 IN THE PAPER
	u=idct2(u);
	return
end