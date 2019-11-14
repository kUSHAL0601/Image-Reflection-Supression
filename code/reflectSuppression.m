% single image reflection suppression via gradient thresholding and solving
% PDE using discrete cosine transform(DCsupressedImage3D)

% Input:
% Image3D	  - the input image
% h	   - the gradient thresholding parameter
% epsilon - the epsilon in Eq.(3) in the paper

% Output:
% supressedImage3D - the dereflected image


function supressedImage3D = reflectSuppression(Image3D, h, epsilon)
	Image3D=im2double(Image3D);	 
	[r,c,d]=size(Image3D);
	supressedImage3D = zeros(r,c,d); 
	Image3D_Laplacian_2 = zeros(r,c,d);
	
	for dim = 1:d
		gradient=getGradient(Image3D(:,:,dim));
		gradient_r=gradient(:,:,1);
		gradient_c=gradient(:,:,2);
		gradient_norm=sqrt(gradient_r.^2 + gradient_c.^2);
		gradient_norm_thresh=thresh(gradient_norm, h);					 % gradient thresholding
		% gradient_norm_thresh = wthresh(gradient_norm, 'h', h);		 % gradient thresholding matlab
		ind = (gradient_norm_thresh == 0);
		gradient_r(ind)=0;
		gradient_c(ind)=0;
		gradient_thresh(:,:,1)=gradient_r;
		gradient_thresh(:,:,2)=gradient_c;									   
		Image3D_Laplacian_2(:,:,dim)=getDivergence(getGradient(getDivergence( gradient_thresh)));			 % compute L(getDivergence(delta_h(Image3D)))
	end

	rhs=Image3D_Laplacian_2+epsilon*Image3D;

	for dim = 1:d
		supressedImage3D(:,:,dim) = solvePoisonDCT(rhs(:,:,dim),1,0,epsilon);	  % solve the PDE using DCsupressedImage3D 
	end
end