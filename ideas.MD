1. 通过在运动区域建立基站，让基站代替高能耗的GPS之类的位置信息收发板载平台。基站充当交换站，将GPS信息在机器人和卫星之间转送，降低机器人自身的能耗。
2. 毕业论文：结合 yolov4 做。
3. 论文开头的本文内容总结的写法：
> In the remainder of this document we will first characterize the (hyper) graph-embeddable problems, and we will give an introduction to their solution via the popular Levenberg-Marquardt or Gauss-Newton algorithms implemented in this library. Subsequently, we will describe the high-level behavior of the library, and the basic structures. Finally, we will introduce how to implement 2D SLAM as a simple example.
4. class diagram 来展现代码结构 
5. 

# 用一些新的数学思维、理论解释当前的SLAM / 视觉SLAM，形成一个（至少看起来）能自圆其说的框架。

# Apply Lie theory on estimating camera distortion coefficient 
Show experimental results: compare the undistoring error between that of w/o Lie theory.

# SLAM + Physical Control
cf. 
> 此外Davide也分享了其他方面的一些idea，包括slam与控制的结合（基本思路是控制相机去看纹理丰富的区域）