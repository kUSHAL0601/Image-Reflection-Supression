# Image-Reflection-Supression
Fast Single Image Reflection Suppression using Discrete Cosine Transform as a part of DIP course project

# How to run
1. Clone the repository from [here](https://github.com/kUSHAL0601/Image-Reflection-Supression.git)
2. Open it in octave. Make sure pwd is [code](./code).
3. Make sure you install the dependencies given in [octave-dep.txt](./octave-dep.txt) using pkg install -forge <package_name>
4. Load the following files given in code
  + [getDivergence.m](./code/getDivergence.m)
  + [getGradient.m](./code/getGradient.m)
  + [solvePoisonDCT.m](./code/solvePoisonDCT.m)
  + [reflectSuppression.m](./code/reflectSuppression.m)
5. Read an image or frame using imread/avi and call reflectSuppression to get the de-reflected Image

# Sample Scripts
+ For image : sampleRun.m
+ For video : sampleMovieRun.m

# Link to presentation
+ [PFA](https://docs.google.com/presentation/d/1Jm6ZNbxN4smEPo7UlZg6J4o90DFLMxQ5bQOE5IA8N38/edit?usp=sharing)
