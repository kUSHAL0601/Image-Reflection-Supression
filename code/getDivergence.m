% compute the divergence of gradient
% Input gradient2D is a matrix of size r*c*2
% gradient2D(:,:,1) is the derivative along the row-direction
% gradient2D(:,:,2) is the derivative along the column-direction

function divergence=getDivergence(gradient2D)
	[r,c,d]=size(gradient2D);
	divergence=zeros(r,c);

	gradient_r=gradient2D(:,:,1);
	gradient_r1=zeros(r,c);
	gradient_r1(:,2:c)=gradient_r(:,1:c-1);

	divergence=divergence+gradient_r-gradient_r1;

	gradient_c=gradient2D(:,:,2);
	gradient_c1=zeros(r,c);
	gradient_c1(2:r,:)=gradient_c(1:r-1,:);

	divergence=divergence+gradient_c-gradient_c1;
end