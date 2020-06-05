Visual Odometry 
2020/06/04
--- 

- [](#)

# [An overview of visual odometry](https://en.wikipedia.org/wiki/Visual_odometry)

# vision taxonomy 
## stereo 
## monocular 
## binocular 
## trinocular 

# cameras taxonomy 
## perspective camera 
## omnidirectional camera 
## catadioptric camera 

# Feature descriptor
## Haris 

## SIFT 
main cf. read the paper. 

[A brief illustration](https://opencv-python-tutroals.readthedocs.io/en/latest/py_tutorials/py_feature2d/py_sift_intro/py_sift_intro.html)

[A comprehensive elaboration](https://en.wikipedia.org/wiki/Scale-invariant_feature_transform)

## SURF 

## BRIEF 

## ORB

## FAST 

## BRISK

# Miscellaneous notes 
## [Egomotion](https://en.wikipedia.org/wiki/Visual_odometry#Egomotion)

## [holonomic and nonholonomic constraints](vo/Holonomic_and_Nonholonomic_Constraints.pdf)

## [reprojection error](https://en.wikipedia.org/wiki/Reprojection_error)

## [Blur(smooth) image in OpenCV](https://docs.opencv.org/master/dc/dd3/tutorial_gausian_median_blur_bilateral_filter.html)

## Affine transformation 
[A video example](vo/affine_transformation_video.webm)

Affine transformations on the 2D plane can be performed by linear transformations in three dimensions. Translation is done by shearing along over the z axis, and rotation is performed around the z axis.

## [image saturation(饱和度)](https://www.quora.com/What-is-saturation-in-images)

## Kalman-filter vs. bundle adjustment in SLAM 
> A recursive Kalman filter is more or less the same as bundle adjustment.

[An opinion from web](https://stackoverflow.com/questions/47970583/what-is-the-future-of-filtering-methods-vs-incremental-sfm-in-visual-slam)

## [inverted index(倒排索引)](https://www.geeksforgeeks.org/inverted-index/)
aka. inverted-file data structure

[Discussion about inverted index](https://www.zhihu.com/question/23202010)

## [dead reckoning](https://en.wikipedia.org/wiki/Dead_reckoning)

## 