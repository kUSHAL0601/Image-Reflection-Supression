% COMPUTE THE DIVERGENCE OF GRADIENT
% Input:
% gradient2D(:,:,1) - derivative along row
% gradient2D(:,:,2) - derivative along column
% Output:
% divergence

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