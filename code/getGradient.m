function gradImg2D=getGradient(Img2D)
	[r,c]=size(Img2D);
	gradImg2D=zeros(r,c,2);

	gradImg2D_row=zeros(r,c);
	gradImg2D_row(:,1:c-1)=Img2D(:,2:c);
	gradImg2D_row(:,c)=Img2D(:,c);


	gradImg2D_col=zeros(r,c);
	gradImg2D_col(1:r-1,:)=Img2D(2:r,:);
	gradImg2D_col(r,:)=Img2D(r,:);

	gradImg2D(:,:,1)=gradImg2D_row-Img2D;
	gradImg2D(:,:,2)=gradImg2D_col-Img2D;
end