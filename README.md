# Image-Reflection-Supression
Fast Single Image Reflection Suppression using Discrete Cosine Transform as a part of DIP course project

# How to run
1. Clone the repository from [here](https://github.com/kUSHAL0601/Image-Reflection-Supression.git)
2. Make sure you install the dependencies given in [octave-dep.txt](./octave-dep.txt) using pkg install -forge <package_name>
3. Load the following files given in code
  + [getDivergence.m](./code/getDivergence.m)
  + [getGradient.m](./code/getGradient.m)
  + [solvePoisonDCT.m](./code/solvePoisonDCT.m)
  + [reflectSuppression.m](./code/reflectSuppression.m)
4. Read an image or frame using imread/avi and call reflectSuppression to get the de-reflected Image

# Sample Scripts
+ For image : sampleRun.m
+ For video : sampleMovieRun.m

# Link to presentation
+ [PDA]()
