Lie Theory 
2020/06/06 
--- 

- [Lie theory: Lie group and Lie algebra](#lie-theory-lie-group-and-lie-algebra)
  - [Why we need Lie theory ?](#why-we-need-lie-theory-)
    - [Why we discard other rotation representations (parameterizations) ?](#why-we-discard-other-rotation-representations-parameterizations-)
  - [What is Lie theory ?](#what-is-lie-theory-)
  - [Applications of Lie theory](#applications-of-lie-theory)
- [Miscellaneous notes](#miscellaneous-notes)
  - [Edge and corner in feature detection](#edge-and-corner-in-feature-detection)
    - [Edge](#edge)
    - [Corner](#corner)
  - [](#)

# Lie theory: Lie group and Lie algebra
## Why we need Lie theory ? 
1. The set of rotations is not a vectorspace in the sense of linear algebra. However, rotations do form another mathematical object called a non-commutative group, which possesses some, but not all, of the usual vectorspace properties.
2. 长话短说：控制算法、机器学习算法，往往依赖于定义两个状态间的"差值"。对于R^n中的两个向量x1, x2来说很简单，x1和x2各元素相减就行了。但刚体运动所构成的集合SE(3)不是向量空间，没办法直接做减法，所以需要重新定义差值；因此，距离、导数、梯度、积分等等运算也需要重新定义。了解李群李代数就能知道怎么正确地定义这些量。

### Why we discard other rotation representations (parameterizations) ?
There are several ways to parameterize rotations (e.g., rotation ma- trix, Euler angles, unit-length quaternions). They all have advan- tages and disadvantages; some have singularities while the others have constraints.

What we want is a unconstrained optimization problem, so the ones with constraints (e.g. rotations matrix, quaternion) and the ones whose space is local in that it cannot cover the range of all rotations (e.g. Euler angles). Hence, we choose to use Lie group and Lie algebra which can bypass the issues listed above.

## What is Lie theory ?

## Applications of Lie theory 
1. [运用在机器人轨迹插值中，实现连续(光滑)插值](https://zhuanlan.zhihu.com/p/110006284)


# Miscellaneous notes
## Edge and corner in feature detection 
### [Edge](https://computervision.fandom.com/wiki/Edge)
### [Corner](https://computervision.fandom.com/wiki/Corner_detection)

## 