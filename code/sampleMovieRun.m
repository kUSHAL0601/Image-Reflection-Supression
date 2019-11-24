pkg load control
pkg load signal
pkg load ltfat
pkg load image
pkg load video

% GETTING INFO %
file_name="../Videos/youtube-1.mp4"
info=aviinfo(file_name);
n=getfield(info,"NumFrames");
fps=getfield(info,"FramesPerSecond");

out_name=strcat(file_name,'_out.avi');

f_out=avifile(out_name,"fps",fps,"gop",n);

tic();
for i=1:n-1
  % READING FRAMES %
  supp_frame=reflectSuppression(aviread(file_name,i), 0.033, 1e-8);
  supp_frame(supp_frame<0)=0;
  supp_frame(supp_frame>1)=1;
  addframe(f_out,supp_frame);
end
t_taken=toc();

disp(strcat("Time taken : ",mat2str(t_taken)));
