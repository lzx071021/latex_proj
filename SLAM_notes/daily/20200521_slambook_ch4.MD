2020/05/21
---
- [Topic; Implement codes of Chapter 6 -- Non-linear Optimization](#topic-implement-codes-of-chapter-6----non-linear-optimization)
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
  - [鲁棒核函数(Robust loss function)](#%e9%b2%81%e6%a3%92%e6%a0%b8%e5%87%bd%e6%95%b0robust-loss-function)
  - [C++: performance of using templates](#c-performance-of-using-templates)
  - [C++: functor](#c-functor)
  - [C++: const keyword in member functions](#c-const-keyword-in-member-functions)
    - [C++: const int and int const](#c-const-int-and-int-const)
    - [C++: confusion about const in conjuction with pointer](#c-confusion-about-const-in-conjuction-with-pointer)
    - [C++: mutable keyword](#c-mutable-keyword)
  - [C++: difference between struct and class](#c-difference-between-struct-and-class)
  - [C++: pointers and references](#c-pointers-and-references)
    - [关于使用 pointer 和 reference 作为函数形参的约定](#%e5%85%b3%e4%ba%8e%e4%bd%bf%e7%94%a8-pointer-%e5%92%8c-reference-%e4%bd%9c%e4%b8%ba%e5%87%bd%e6%95%b0%e5%bd%a2%e5%8f%82%e7%9a%84%e7%ba%a6%e5%ae%9a)
  - [使用 矩阵变换(transformation) 的思想思考 有关 pointer 的复杂的 declaration statement](#%e4%bd%bf%e7%94%a8-%e7%9f%a9%e9%98%b5%e5%8f%98%e6%8d%a2transformation-%e7%9a%84%e6%80%9d%e6%83%b3%e6%80%9d%e8%80%83-%e6%9c%89%e5%85%b3-pointer-%e7%9a%84%e5%a4%8d%e6%9d%82%e7%9a%84-declaration-statement)
  - [glog: Google Logging Library](#glog-google-logging-library)
  - [C++: #pragma once](#c-pragma-once)
  - [C++: extern keyword](#c-extern-keyword)
  - [C++: scope resolution operator ::](#c-scope-resolution-operator)
  - [C++ object constructor and destructor](#c-object-constructor-and-destructor)
  - [Vscode 调试 CMake 编译得到的可执行文件](#vscode-%e8%b0%83%e8%af%95-cmake-%e7%bc%96%e8%af%91%e5%be%97%e5%88%b0%e7%9a%84%e5%8f%af%e6%89%a7%e8%a1%8c%e6%96%87%e4%bb%b6)
  - [C++: void keyword](#c-void-keyword)
  - [C++: new and delete for dynamically allocating memory](#c-new-and-delete-for-dynamically-allocating-memory)
  - [C++: memory layout of C/C++ programs](#c-memory-layout-of-cc-programs)
  - [C++ smart pointers and raw pointers](#c-smart-pointers-and-raw-pointers)
    - [Why are pointers not replaced entirely by smart pointers in C++?](#why-are-pointers-not-replaced-entirely-by-smart-pointers-in-c)
    - [](#)
  - [50/72 style, make good git commit messages](#5072-style-make-good-git-commit-messages)

# Topic; Implement codes of Chapter 6 -- Non-linear Optimization

## [chrono](http://www.cplusplus.com/reference/chrono/)
- steady_clock 
- time_point
- duration 
- duration_cast 
- duration.count()

### C++ templates
[Templates overview](figures_ch6/overloads_and_templates.pdf)

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

## [C++ static keyword](figures_ch6/cpp_static.pdf)
[A comprehensive elaboration about static keyworkd](https://www.bogotobogo.com/cplusplus/statics.php)

## C++11 alias declarations (using) and typedef 
cf. Effective Modern C++  Item 9: Prefer alias declarations to typedefs. 

[对 Item 9 的中文解释](https://zhuanlan.zhihu.com/p/21264013)

## [C++ namespace](figures_ch6/cpp_namespace.pdf)

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

## 鲁棒核函数(Robust loss function)
[Huber loss](https://en.wikipedia.org/wiki/Huber_loss)

## [C++: performance of using templates](https://stackoverflow.com/questions/2442358/do-c-templates-make-programs-slow)

## [C++: functor](https://stackoverflow.com/questions/356950/what-are-c-functors-and-their-uses)

## C++: const keyword in member functions
简要的说明: 说明this指针是一个pointer to const object，所以函数里不能修改non-static data member的值，注意，static member是可以被修改的。

[A thorough discussion about const keyword](https://stackoverflow.com/a/751783)

### [C++: const int and int const](https://stackoverflow.com/questions/3247285/const-int-int-const)

### [C++: confusion about const in conjuction with pointer](https://www.geeksforgeeks.org/difference-between-const-int-const-int-const-and-int-const/)

### [C++: mutable keyword](figures_ch6/cpp_mutable.pdf)

## C++: difference between struct and class 
The only difference between a struct and class in C++ is the default accessibility of member variables and methods. In a struct they are public; in a class they are private.

## [C++: pointers and references](https://www.geeksforgeeks.org/pointers-vs-references-cpp/)

### [关于使用 pointer 和 reference 作为函数形参的约定](https://stackoverflow.com/questions/2627166/difference-between-const-reference-and-normal-parameter)
1. 如函数可能会修改传入的参数，应该使用 typename *var; 
  - 这样可以使得调用方的代码区别于 传值 或 传引用 的代码: 
    - typename *var -> 调用方必须使用 dereference sign &;
    - 传值 或 传引用 则不必。
2. 当传入一个“很大”的数据结构或类时，使用 const typename &var;
  - 尽管 传引用 也能达到修改值的效果，但为了统一规则，减少歧义，增强构建方和调用方对于代码解读的一致性，统一使用 const 修饰，即 **所有按引用传递的参数必须加上 const**。
  - 这种写法“强制”调用方只会在 **默认该函数不会修改传入的参数** 时才使用这种写法。
  - 为保持一致性，通常在 传入的数据结构和类 很小时，也应该使用这种写法。
3. 当传入的参数是通常可见的 常量，简单的 整型、浮点型变量时，使用传值写法 typename var;
  - 根据情况使用 const 修饰。

## 使用 矩阵变换(transformation) 的思想思考 有关 pointer 的复杂的 declaration statement
e.g. const T * const x; 
矩阵变换，可以看作从右往左读的方法: 
1. 定义 x;
2. 将 x 设为 const;
3. 将 const x 设为 指针；
4. 将 * const x 设为 指向 T 的指针;
5. 将 T * const x 指向的对象 T 设为 const;

## glog: Google Logging Library 
[How to use glog](http://rpg.ifi.uzh.ch/docs/glog.html)
[中文 brief instructions](http://senlinzhan.github.io/2017/10/07/glog/)

## [C++: #pragma once](https://zh.wikipedia.org/wiki/Pragma_once)

## [C++: extern keyword](https://stackoverflow.com/a/10422049)

## [C++: scope resolution operator ::](https://stackoverflow.com/a/15649663)

## C++ object constructor and destructor 
[简单的使用示例](https://www.runoob.com/cplusplus/cpp-constructor-destructor.html)

## Vscode 调试 CMake 编译得到的可执行文件 
修改 launch.json 中的 program 参数的值即可。

## [C++: void keyword](figures_ch6/cpp_void.pdf)

## [C++: new and delete for dynamically allocating memory](https://www.geeksforgeeks.org/new-and-delete-operators-in-cpp-for-dynamic-memory/)


## C++: memory layout of C/C++ programs 
[Discussion I](https://www.geeksforgeeks.org/memory-layout-of-c-program/)

[Discussion II](https://www.learncpp.com/cpp-tutorial/79-the-stack-and-the-heap/)

## C++ smart pointers and raw pointers 

### [Why are pointers not replaced entirely by smart pointers in C++?](https://www.quora.com/Why-are-pointers-not-replaced-entirely-by-smart-pointers-in-C++#)
[A bit of discussion](https://stackoverflow.com/questions/3396939/replacing-existing-raw-pointers-with-smart-pointers)

### 

## [50/72 style, make good git commit messages](figures_ch6/good_git_commit_messages.pdf)

