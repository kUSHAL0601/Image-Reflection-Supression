pkg load control
pkg load signal
pkg load ltfat
pkg load image

file_name='../Images/train2.jpg';
out_name=strcat(file_name,'_out.jpg');

Image3D=imread(file_name);
ResImage3D=reflectSuppression(Image3D, 0.033, 1e-8);
%imwrite(ResImage3D,out_name);
figure();subplot(1,2,1); imshow(Image3D); subplot(1,2,2); imshow(ResImage3D);
