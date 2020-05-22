2020/05/21
---
- [Topic; Part I: Implement codes of Chapter 4 -- Non-linear Optimization](#topic-part-i-implement-codes-of-chapter-4----non-linear-optimization)
  - [chrono](#chrono)
    - [C++ templates](#c-templates)
    - [Implicit conversions](#implicit-conversions)
    - [constexpr and const in C++](#constexpr-and-const-in-c)
      - [Constant expressions](#constant-expressions)
        - [Expressions](#expressions)
      - [Literal (字面量)](#literal-%e5%ad%97%e9%9d%a2%e9%87%8f)
    - [Function prototype](#function-prototype)
  - [C++ static keyword](#c-static-keyword)
  - [C++11 alias declarations (using) and typedef](#c11-alias-declarations-using-and-typedef)
  - [C++ namespace](#c-namespace)
  - [C++ list initialzation](#c-list-initialzation)
  - [C++ trailing return type](#c-trailing-return-type)
  - [C++ typeid](#c-typeid)
  - [C++ container(容器) 简介](#c-container%e5%ae%b9%e5%99%a8-%e7%ae%80%e4%bb%8b)
  - [C++ 函数返回多个值](#c-%e5%87%bd%e6%95%b0%e8%bf%94%e5%9b%9e%e5%a4%9a%e4%b8%aa%e5%80%bc)
  - [C++ inline function](#c-inline-function)
  - [C++ pair data structure](#c-pair-data-structure)
  - [C++ tuple data structure](#c-tuple-data-structure)
  - [C++ insert vs emplace](#c-insert-vs-emplace)
  - [C++ emplace_back and std::move](#c-emplaceback-and-stdmove)
  - [C++中的"map, filter, reduce"](#c%e4%b8%ad%e7%9a%84%22map-filter-reduce%22)
    - [C++ transform](#c-transform)
    - [C++ accumulate](#c-accumulate)
  - [C++ iterator](#c-iterator)
    - [C++ Do we need include headers that were already included by other headers we included?](#c-do-we-need-include-headers-that-were-already-included-by-other-headers-we-included)
  - [C++ iota function template](#c-iota-function-template)
  - [Eigen ldlt()](#eigen-ldlt)
  - [OpenCV](#opencv)
    - [OpenCV random number generator RNG](#opencv-random-number-generator-rng)
    - [OpenCV plot a graph in accordance with the dataset](#opencv-plot-a-graph-in-accordance-with-the-dataset)

# Topic; Part I: Implement codes of Chapter 4 -- Non-linear Optimization

## [chrono](http://www.cplusplus.com/reference/chrono/)
- steady_clock 
- time_point
- duration 
- duration_cast 
- duration.count()

### C++ templates
[Templates overview](figures_ch4/overloads_and_templates.pdf)

### [Implicit conversions](https://en.cppreference.com/w/c/language/conversion)

### constexpr and const in C++
[C++ const 和 constexpr 的区别](https://www.zhihu.com/question/35614219)

[Advanced! A comprehensive explanation for constexpr](https://en.cppreference.com/w/cpp/language/constexpr)

#### Constant expressions 
An expression that can be evaluated at compile time. 

##### Expressions 
An expression is a sequence of operators and their operands, that specifies a computation.

Expression evaluation may produce a result (e.g., evaluation of 2+2 produces the result 4) and may generate side-effects (e.g. evaluation of std::printf("%d",4) prints the character '4' on the standard output).

#### Literal (字面量)
[字面量，常量和变量之间的区别](https://www.jianshu.com/p/0f2816805da6)

### [Function prototype](https://codescracker.com/cpp/cpp-function-definition.htm)

## [C++ static keyword](figures_ch4/cpp_static.pdf)

## C++11 alias declarations (using) and typedef 
cf. Effective Modern C++  Item 9: Prefer alias declarations to typedefs. 

[对 Item 9 的中文解释](https://zhuanlan.zhihu.com/p/21264013)

## [C++ namespace](figures_ch4/cpp_namespace.pdf)

## C++ list initialzation 
[A comprehensive elaboration](https://zh.cppreference.com/w/cpp/language/list_initialization)

## C++ trailing return type 
[Shoule we use it?](https://stackoverflow.com/questions/11215227/should-the-trailing-return-type-syntax-style-become-the-default-for-new-c11-pr)

## C++ typeid 
[使用 typeid 判断 “类型” 和 “表达式” 的类型](https://zh.cppreference.com/w/cpp/language/typeid)

## [C++ container(容器) 简介](https://zh.cppreference.com/w/cpp/container)

## C++ 函数返回多个值
[一些方法的讨论](https://www.zhihu.com/question/57540006)

## C++ inline function
[inline functions in C++ by GeeksforGeeks](https://www.geeksforgeeks.org/inline-functions-cpp/)

## [C++ pair data structure](http://www.cplusplus.com/reference/utility/pair/)
vector<pair<Tx, Ty>> Foo; 

Foo.push_back(make_pair(a, b)) 或 Foo.emplace(a, b)

## [C++ tuple data structure](http://www.cplusplus.com/reference/tuple/)
[Add elements to a tuple](https://stackoverflow.com/questions/41421669/how-to-add-elements-to-a-vector-of-tuples/41421896#41421896)

## C++ insert vs emplace 
In C++, all containers (vector, stack, queue, set, map, etc) support both insert and emplace operations.

The advantage of emplace is, it does in-place insertion and avoids an unnecessary copy of object. For primitive data types, it does not matter which one we use. But for objects, use of emplace() is preferred for efficiency reasons.

## C++ emplace_back and std::move 
[A bit of discussion](https://stackoverflow.com/a/35405103)

## C++中的"map, filter, reduce" 
python的map，filter和reduce函数，在标准C++中分别有std::transform（对应python的map），std::copy_if（对应python的filter），std::accumulate（对应python的reduce）。

### [C++ transform](https://www.jianshu.com/p/cbe722ca4276)

### [C++ accumulate](https://www.jianshu.com/p/405cf683cba7)

## [C++ iterator](http://www.cplusplus.com/reference/iterator/)

### [C++ Do we need include headers that were already included by other headers we included?](https://stackoverflow.com/questions/38926640/is-it-necessary-to-include-header-iterator-to-use-begin-and-end-functions)

## [C++ iota function template](http://www.cplusplus.com/reference/numeric/iota/)

## [Eigen ldlt()](https://eigen.tuxfamily.org/dox/classEigen_1_1MatrixBase.html#a0ecf058a0727a4cab8b42d79e95072e1)

## OpenCV 
### [OpenCV random number generator RNG](https://docs.opencv.org/4.3.0/d1/dd6/classcv_1_1RNG.html#a8df8ce4dc7d15916cee743e5a884639d)

### [OpenCV plot a graph in accordance with the dataset](https://gist.github.com/UnaNancyOwen/ae41d341c054f0b1193839ecf03bb01e)
[OpenCV official plot modules](https://docs.opencv.org/3.4/d0/d1e/classcv_1_1plot_1_1Plot2d.html#a888b6963153283c6d0f22370d8144823)





