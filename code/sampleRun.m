pkg load control
pkg load signal
pkg load ltfat
pkg load image

Image3D=imread('./figures/train2.jpg');
ResImage3D=reflectSuppression(Image3D, 0.033, 1e-8);
subplot(1,2,1); imshow(Image3D); subplot(1,2,2); imshow(ResImage3D);