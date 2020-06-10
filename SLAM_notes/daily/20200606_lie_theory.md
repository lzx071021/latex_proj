Lie Theory 
2020/06/06 
--- 

- [Lie theory: Lie group and Lie algebra](#lie-theory-lie-group-and-lie-algebra)
  - [Why we need Lie theory ?](#why-we-need-lie-theory-)
    - [Why we discard other rotation representations (parameterizations) ?](#why-we-discard-other-rotation-representations-parameterizations-)
  - [What is Lie theory ?](#what-is-lie-theory-)
  - [Adjoint representation / action](#adjoint-representation--action)
  - [Applications of Lie theory](#applications-of-lie-theory)
- [Miscellaneous notes](#miscellaneous-notes)
  - [Edge and corner in feature detection](#edge-and-corner-in-feature-detection)
    - [Edge](#edge)
    - [Corner](#corner)
  - [An interesting and insightful video about topology](#an-interesting-and-insightful-video-about-topology)
  - [manifold](#manifold)
    - [Atlas](#atlas)
      - [What is atlas on Earth?](#what-is-atlas-on-earth)
    - [Why an n-sphere?](#why-an-n-sphere)
      - [implicit and explicit representation](#implicit-and-explicit-representation)
  - [Tensor](#tensor)
  - [Topology](#topology)
  - [surjective mapping and onto mapping](#surjective-mapping-and-onto-mapping)
  - [同构、同态、同胚](#同构同态同胚)
  - [群中的同构和同态](#群中的同构和同态)
  - [bilinear map](#bilinear-map)
  - [对数学的整体的把握](#对数学的整体的把握)
    - [数学的四个角度观察一个数学对象](#数学的四个角度观察一个数学对象)
  - [Visualizaing quaternions](#visualizaing-quaternions)
  - [Countable set and countably infinite set](#countable-set-and-countably-infinite-set)
  - [A complete elaboration for injection, surjection and bijection](#a-complete-elaboration-for-injection-surjection-and-bijection)
  - [homeomorphism is a bijection.](#homeomorphism-is-a-bijection)
  - [Why figure-8 is not a manifold?](#why-figure-8-is-not-a-manifold)
  - [A comprehensive elaboration of group homomorphism](#a-comprehensive-elaboration-of-group-homomorphism)
  - [Group](#group)
    - [An element of a group is just like an element of a set.](#an-element-of-a-group-is-just-like-an-element-of-a-set)
    - [Group action](#group-action)
      - [Group of transformations](#group-of-transformations)
    - [Group theory is all about symmetry](#group-theory-is-all-about-symmetry)
    - [Symmetry group](#symmetry-group)
      - [Isometry group](#isometry-group)
        - [Isometry](#isometry)
          - [Symmetry](#symmetry)
    - [multiplicative group](#multiplicative-group)
    - [additive group](#additive-group)
  - [metric space and topological space](#metric-space-and-topological-space)
  - [laws](#laws)
  - [Twist in Robotics](#twist-in-robotics)
  - [ESKF相关](#eskf相关)
  - [n-sphere](#n-sphere)
    - [3-sphere](#3-sphere)
  - [degree of freedom](#degree-of-freedom)
  - [Rotation formalisms in three dimensions](#rotation-formalisms-in-three-dimensions)
    - [Axis-angle representation](#axis-angle-representation)

# Lie theory: Lie group and Lie algebra
## Why we need Lie theory ? 
1. The set of rotations is not a vectorspace in the sense of linear algebra. However, rotations do form another mathematical object called a non-commutative group, which possesses some, but not all, of the usual vectorspace properties.
2. 长话短说：控制算法、机器学习算法，往往依赖于定义两个状态间的"差值"。对于R^n中的两个向量x1, x2来说很简单，x1和x2各元素相减就行了。但刚体运动所构成的集合SE(3)不是向量空间，没办法直接做减法，所以需要重新定义差值；因此，距离、导数、梯度、积分等等运算也需要重新定义。了解李群李代数就能知道怎么正确地定义这些量。

### Why we discard other rotation representations (parameterizations) ?
There are several ways to parameterize rotations (e.g., rotation ma- trix, Euler angles, unit-length quaternions). They all have advan- tages and disadvantages; some have singularities while the others have constraints.

What we want is a unconstrained optimization problem, so the ones with constraints (e.g. rotations matrix, quaternion) and the ones whose space is local in that it cannot cover the range of all rotations (e.g. Euler angles). Hence, we choose to use Lie group and Lie algebra which can bypass the issues listed above.

## What is Lie theory ?


## [Adjoint representation / action](https://en.wikipedia.org/wiki/Adjoint_representation#)

## Applications of Lie theory 
1. [运用在机器人轨迹插值中，实现连续(光滑)插值](https://zhuanlan.zhihu.com/p/110006284)


# Miscellaneous notes
## Edge and corner in feature detection 
### [Edge](https://computervision.fandom.com/wiki/Edge)
### [Corner](https://computervision.fandom.com/wiki/Corner_detection)

## [An interesting and insightful video about topology](https://www.youtube.com/watch?v=AmgkSdhK4K8)

## manifold
main cf. [Manifolds: A gentle introduction](http://bjlkeng.github.io/posts/manifolds/)

[A compact and visualizing elaboration for manifold](https://www.youtube.com/watch?v=zIjBArHTPZ4)

[和上面这个视频差不多意思的解释，不过解释了更多的名词，并且是系列视频，还讲了其他的](https://www.youtube.com/watch?v=NI1TW-LcHtI&list=PLeFwDGOexoe8cjplxwQFMvGLSxbOTUyLv&index=2), 该系列视频2，3，5有价值。

[What does "smoothness" mean wrt. a manifold ?](https://math.stackexchange.com/a/3709008/681195)

“天地有正气，杂然赋流形” -- 文天祥。

其实流形并不是什么神秘的东西，它的英文是"Manifold","流形"这一翻译主要源于文天祥的诗句"天地有正气，杂然赋流形","流形"实际就是意指世界万物。我们过去研究的几何对象总是在标准的欧氏空间中进行的，但世界并不是我们所期待地那么规则，这个时候就有了"流形"的概念。从直观上说，"流形"是可以在局部等同于欧氏空间的一些对象。

### [Atlas](https://en.wikipedia.org/wiki/Differentiable_manifold#Atlases)
[补充材料](https://en.wikipedia.org/wiki/Atlas_(topology))

#### What is atlas on Earth?
TODO

### [Why an n-sphere?](https://math.stackexchange.com/a/800240/681195)
[Quora discussion: Is a sphere 3D or 2D](https://www.quora.com/Is-a-sphere-3D-or-2D)
#### implicit and explicit representation 
"Modern Robotics:  Mechanics, Planning, and Control" series course. 

[Configuration Space topology](https://www.youtube.com/watch?v=FyLNR3edOds&list=PLggLP4f-rq02vX0OQQ5vrCxbJrzamYDfx&index=6)

[Configuration Space configuration](https://www.youtube.com/watch?v=PPgJPjCUIXU&list=PLggLP4f-rq02vX0OQQ5vrCxbJrzamYDfx&index=7)


## Tensor 
[A very brief and low-level explanation about tensor](https://zhuanlan.zhihu.com/p/48982978), 有点错误！

[一篇看起来不错的博客，不过感觉只是从一个角度解释了张量](http://bjlkeng.github.io/posts/tensors-tensors-tensors/)

[一个非常有趣从物理的角度解释张量的系列视频](https://www.youtube.com/watch?v=8ptMTLzV4-I&list=PLJHszsWbB6hrkmmq57lX8BV-o-YIOFsiG), 这里还有一个与该视频作者 consistent 的张量的第三种定义方式的[文字解释](https://math.stackexchange.com/a/10374/681195)

[另外一个系列视频，看起来好像是从 multidimensional array 的角度解释张量](https://www.youtube.com/watch?v=uaQeXi4E7gA&feature=youtu.be)

## Topology 
[An illustration about topology based on a concrete problem](https://youtu.be/AmgkSdhK4K8)


## surjective mapping and onto mapping
They are the same.

## 同构、同态、同胚
[它们之间的区别概述](https://www.zhihu.com/question/31638975), 以及[这篇回答的 English counterpart](https://math.stackexchange.com/a/585801/681195)

## [群中的同构和同态](https://www.jianshu.com/p/5aea006393bb)

## bilinear map 
TODO

## 对数学的整体的把握
[某MIT学生对现代数学的思考与略述](https://dahuasky.wordpress.com/2009/01/22/%E5%9C%A8%E6%95%B0%E5%AD%A6%E7%9A%84%E6%B5%B7%E6%B4%8B%E4%B8%AD%E9%A3%98%E8%8D%A1/)

[二十世纪的数学](https://zhuanlan.zhihu.com/p/59488122)

### 数学的四个角度观察一个数学对象 
**参考 a micro Lie theory ...** paper.
geometry 
algebra 
TODO 

## [Visualizaing quaternions](https://www.youtube.com/watch?v=d4EgbgTm0Bg)

## [Countable set and countably infinite set](https://en.wikipedia.org/wiki/Countable_set#Definition)

## [A complete elaboration for injection, surjection and bijection](https://en.wikipedia.org/wiki/Bijection,_injection_and_surjection)

## homeomorphism is a bijection.

## [Why figure-8 is not a manifold?](https://www.quora.com/Why-is-figure-8-not-a-manifold)
From definition and from tangent space.

## [A comprehensive elaboration of group homomorphism](https://en.wikipedia.org/wiki/Group_homomorphism)

## Group
[A very low-level but (perhaps) useful introduction to group theory](lie/Symmetry%20and%20Group%20Theory.pdf)

> The easy answer is that group theory is a perfect tool for studying symmetry, but group theory is not confined to the study of symmetry. It's useful for other things like abstract algebra and dynamical systems and just lots of things.
### An element of a group is just like an element of a set.
### [Group action](https://en.wikipedia.org/wiki/Group_action)
[More about group action](https://mathworld.wolfram.com/GroupAction.html)
#### [Group of transformations](https://www.quora.com/What-is-a-group-of-transformations-in-mathematics)
### Group theory is all about symmetry 
[A mathexchange discussion](https://math.stackexchange.com/a/2514123/681195)

[A 3Blue1Blown video](https://www.youtube.com/watch?v=mvmuCPvRoWQ), this video illustrates the idea of symmetry and group action.

This video states that "**a group is a collection of symmetric actions on some mathematical object**." 并以 实数线 这一简单的例子解释了group theory 的很多概念，包括 group homomorphism that preserves the group structure.

It states: homo = same, morph = shape, homomorphism = same-shape-ism.

### [Symmetry group](https://en.wikipedia.org/wiki/Symmetry_group)
#### [Isometry group](https://en.wikipedia.org/wiki/Isometry_group)
##### [Isometry](https://en.wikipedia.org/wiki/Isometry)
###### Symmetry 
[What is symmetry?](https://qr.ae/pNKThE)

A symmetry is a transformation that preserves some structure.

Rotating a hexagon by one-sixth of a full turn puts it back where it started, preserving the placement of vertices and edges. That's a symmetry.

Shifting every real number up by some fixed amount preserves the order of the numbers, as well as their relative distances. That's a symmetry. Shifting the numbers by 1 is a special case where more structure is preserved: the property of being an integer.

Symmetries can be combined: if you have a symmetry A, and a symmetry B, you can perform A and then perform B to obtain another symmetry which will (often) be different from A and B. Rotating a hexagon twice by 1/6 of a turn yields a rotation by 1/3 of a turn, which is also a symmetry of the hexagon.

The set of all symmetries of any object forms a group, in which the successive combination of symmetries forms the operation of multiplication. 

You should not assume that the group itself is symmetric (though it is, too, in an appropriate sense). Group theory is the study of symmetry not because groups are nice and symmetric, but because groups describe how the symmetries of any object can be combined together, how they interplay and coexist.

### [multiplicative group](https://mathworld.wolfram.com/MultiplicativeGroup.html)

### [additive group](https://mathworld.wolfram.com/AdditiveGroup.html)

## metric space and topological space 
[metric space](https://en.wikipedia.org/wiki/Metric_space)

A metric on a space induces topological properties like open and closed sets, which lead to the study of more abstract topological spaces.

## laws 
commutative law  
associative law 
distributive law 

## [Twist in Robotics](https://en.wikipedia.org/wiki/Screw_theory#Twist)
[An illustrative short video](https://www.youtube.com/watch?v=mvGZtO_ruj0)

## ESKF相关 
[A blog](https://blog.csdn.net/wubaobao1993/article/details/84327700)

[相关的论文]()
TODO 

## [n-sphere](https://en.wikipedia.org/wiki/N-sphere)
### [3-sphere](https://en.wikipedia.org/wiki/3-sphere)
[How to visualize the 3-sphere(n-sphere)?](https://www.quora.com/How-can-one-visualize-a-3-sphere)

[A 3Blue1Blown video for visualizing the quaternion space(a 3-sphere)](https://www.youtube.com/watch?v=d4EgbgTm0Bg&feature=emb_rel_pause)

[A interesting discusion: Do we live in 3D space?](https://www.quora.com/Do-we-live-in-a-3-dimensional-space-or-a-4-dimensional-one)

## [degree of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom)
dof of manifold = dim of manifold

## [Rotation formalisms in three dimensions](https://en.wikipedia.org/wiki/Rotation_formalisms_in_three_dimensions)
### [Axis-angle representation](https://en.wikipedia.org/wiki/Axis%E2%80%93angle_representation)






