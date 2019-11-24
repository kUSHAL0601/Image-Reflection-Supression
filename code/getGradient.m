% COMPUTE THE DIVERGENCE OF GRADIENT
% Input:
% Img2D - 2D image i.e. image among one color dimensions
% Output:
% gradient2D(:,:,1) - derivative along row
% gradient2D(:,:,2) - derivative along column

function gradImg2D=getGradient(Img2D)
	[r,c]=size(Img2D);
	gradImg2D=zeros(r,c,2);

	gradImg2D_row=zeros(r,c);
  % GET row and row+1 (we finally need to subtract them) %
	gradImg2D_row(:,1:c-1)=Img2D(:,2:c);
	gradImg2D_row(:,c)=Img2D(:,c);


	gradImg2D_col=zeros(r,c);
	% GET column and column+1 (we finally need to subtract them) %
  gradImg2D_col(1:r-1,:)=Img2D(2:r,:);
	gradImg2D_col(r,:)=Img2D(r,:);

  % SUBTRACTION %
	gradImg2D(:,:,1)=gradImg2D_row-Img2D;
	gradImg2D(:,:,2)=gradImg2D_col-Img2D;
end
