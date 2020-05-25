2020/05/21
---
- [Topic; Implement codes of Chapter 6 -- Non-linear Optimization](#topic-implement-codes-of-chapter-6----non-linear-optimization)
  - [chrono](#chrono)
    - [C++ templates](#c-templates)
    - [Implicit conversions](#implicit-conversions)
    - [constexpr and const in C++](#constexpr-and-const-in-c)
      - [Constant expressions](#constant-expressions)
        - [Expressions](#expressions)
      - [Literal (字面量)](#literal-字面量)
    - [Function prototype](#function-prototype)
  - [C++ static keyword](#c-static-keyword)
  - [C++11 alias declarations (using) and typedef](#c11-alias-declarations-using-and-typedef)
  - [C++ namespace](#c-namespace)
  - [C++ list initialzation](#c-list-initialzation)
  - [C++ trailing return type](#c-trailing-return-type)
  - [C++ typeid](#c-typeid)
  - [C++ container(容器) 简介](#c-container容器-简介)
  - [C++ 函数返回多个值](#c-函数返回多个值)
  - [C++ inline function](#c-inline-function)
  - [C++ pair data structure](#c-pair-data-structure)
  - [C++ tuple data structure](#c-tuple-data-structure)
  - [C++ insert vs emplace](#c-insert-vs-emplace)
  - [C++ emplace_back and std::move](#c-emplace_back-and-stdmove)
  - [C++中的"map, filter, reduce"](#c中的map-filter-reduce)
    - [C++ transform](#c-transform)
    - [C++ accumulate](#c-accumulate)
  - [C++ iterator](#c-iterator)
    - [C++ Do we need include headers that were already included by other headers we included?](#c-do-we-need-include-headers-that-were-already-included-by-other-headers-we-included)
  - [C++ iota function template](#c-iota-function-template)
  - [Eigen ldlt()](#eigen-ldlt)
  - [OpenCV](#opencv)
    - [OpenCV random number generator RNG](#opencv-random-number-generator-rng)
    - [OpenCV plot a graph in accordance with the dataset](#opencv-plot-a-graph-in-accordance-with-the-dataset)
  - [鲁棒核函数(Robust loss function)](#鲁棒核函数robust-loss-function)
  - [C++: performance of using templates](#c-performance-of-using-templates)
  - [C++: functor](#c-functor)
  - [C++: const keyword in member functions](#c-const-keyword-in-member-functions)
  - [C++: How to initialize const member variable in a class?](#c-how-to-initialize-const-member-variable-in-a-class)
    - [C++: const int and int const](#c-const-int-and-int-const)
    - [C++: confusion about const in conjuction with pointer](#c-confusion-about-const-in-conjuction-with-pointer)
    - [C++: mutable keyword](#c-mutable-keyword)
  - [C++: difference between struct and class](#c-difference-between-struct-and-class)
    - [Google C++ style 关于 struct 和 class 的使用规定](#google-c-style-关于-struct-和-class-的使用规定)
  - [C++: pointers and references](#c-pointers-and-references)
    - [关于使用 pointer 和 reference 作为函数形参的约定](#关于使用-pointer-和-reference-作为函数形参的约定)
  - [使用 矩阵变换(transformation) 的思想思考 有关 pointer 的复杂的 declaration statement](#使用-矩阵变换transformation-的思想思考-有关-pointer-的复杂的-declaration-statement)
  - [glog: Google Logging Library](#glog-google-logging-library)
  - [C++: #pragma once](#c-pragma-once)
  - [C++: extern keyword](#c-extern-keyword)
  - [C++: scope resolution operator ::](#c-scope-resolution-operator-)
  - [C++ object constructor and destructor](#c-object-constructor-and-destructor)
  - [Vscode 调试 CMake 编译得到的可执行文件](#vscode-调试-cmake-编译得到的可执行文件)
  - [C++: void keyword](#c-void-keyword)
  - [C++: new and delete for dynamically allocating memory](#c-new-and-delete-for-dynamically-allocating-memory)
  - [C++: memory layout of C/C++ programs](#c-memory-layout-of-cc-programs)
  - [C++ smart pointers and raw pointers](#c-smart-pointers-and-raw-pointers)
    - [Why are pointers not replaced entirely by smart pointers in C++?](#why-are-pointers-not-replaced-entirely-by-smart-pointers-in-c)
  - [50/72 style, make good git commit messages](#5072-style-make-good-git-commit-messages)
  - [Automatic differentiation](#automatic-differentiation)
  - [[C++: Should I put source code in header files?]](#c-should-i-put-source-code-in-header-files)
  - [C++: making the class public and making its content public](#c-making-the-class-public-and-making-its-content-public)
  - [C++: difference between qualifers and keywords](#c-difference-between-qualifers-and-keywords)
  - [C++: avoid using const non-static (data) member variables](#c-avoid-using-const-non-static-data-member-variables)
  - [C++: inheritance](#c-inheritance)
    - [C++: 虚函数(virtual function) 与 纯虚函数(pure virtual function) 与 抽象类(abstract class)](#c-虚函数virtual-function-与-纯虚函数pure-virtual-function-与-抽象类abstract-class)
      - [C++: virtual table (aka, vtable)](#c-virtual-table-aka-vtable)
  - [C++: 几种 for loop 写法的对比](#c-几种-for-loop-写法的对比)
  - [C++: 关于 accumulate 的一些用法](#c-关于-accumulate-的一些用法)
  - [C++: 造轮子: map and reduce](#c-造轮子-map-and-reduce)
  - [C++: 模板形参包(parameter pack)](#c-模板形参包parameter-pack)
  - [C++: explicit keyword](#c-explicit-keyword)
  - [C++: 函数作为参数](#c-函数作为参数)
  - [C++: std::function vs template](#c-stdfunction-vs-template)
    - [C++: std::function](#c-stdfunction)
  - [C++: smart pointers](#c-smart-pointers)
  - [C++: CppCon](#c-cppcon)
  - [C++ tricks](#c-tricks)
  - [C++ 工程搭建的注意点](#c-工程搭建的注意点)
  - [g2o](#g2o)
    - [一些博客及教程](#一些博客及教程)
    - [gauge freedom](#gauge-freedom)
    - [](#)

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

[More about them](https://docs.microsoft.com/en-us/cpp/cpp/constexpr-cpp?view=vs-2019)

简要地说：const 是 read-only, 只读； constexpr 才是 constant, 常量。

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

First, static specifier when used on global variables limits the variable's scope to the source file in which it is defined.

Second, static and extern specifiers are mutually exclusive therefore declaration of a static variable is also it's definition (tentative definition in particular).

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

[More about const](https://www.learncpp.com/cpp-tutorial/810-const-class-objects-and-member-functions/)

## [C++: How to initialize const member variable in a class?](https://stackoverflow.com/questions/14495536/how-to-initialize-const-member-variable-in-a-class)

### [C++: const int and int const](https://stackoverflow.com/questions/3247285/const-int-int-const)

### [C++: confusion about const in conjuction with pointer](https://www.geeksforgeeks.org/difference-between-const-int-const-int-const-and-int-const/)

### [C++: mutable keyword](figures_ch6/cpp_mutable.pdf)

## C++: difference between struct and class 
The only difference between a struct and class in C++ is the default accessibility of member variables and methods. In a struct they are public; in a class they are private.

只有数据成员时及必要的构造、析构等成员函数时，使用 struct; 其他一律用 class.

### Google C++ style 关于 struct 和 class 的使用规定
仅当只有数据成员时使用 struct, 其它一概使用 class.

struct 用来定义包含数据的被动式对象, 也可以包含相关的常量, 但除了存取数据成员之外, 没有别的函数功能. 并且存取功能是通过直接访问位域, 而非函数调用. 除了构造函数, 析构函数, Initialize(), Reset(), Validate() 等类似的用于设定数据成员的函数外, 不能提供其它功能的函数.

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

## [50/72 style, make good git commit messages](figures_ch6/good_git_commit_messages.pdf)

## [Automatic differentiation](https://en.wikipedia.org/wiki/Automatic_differentiation)

## [C++: Should I put source code in header files?]
It's not bad style, you can put source code in header files, and some times you're forced to, in particular:
- When defining a template class/function.
- When defining an inline function.

Anyway you shouldn't put a free (defined outside a class scope) non-inline function in a header file, since that would be compiled any time a source file include such header (and this will give you a linking error).

## [C++: making the class public and making its content public](https://stackoverflow.com/a/4792783)

## [C++: difference between qualifers and keywords](https://stackoverflow.com/questions/3785789/what-is-the-meaning-of-qualifier)

## [C++: avoid using const non-static (data) member variables](https://www.reddit.com/r/cpp/comments/8wbeom/coding_guideline_avoid_const_member_variables/)

## [C++: inheritance](https://www.geeksforgeeks.org/inheritance-in-c/)

### [C++: 虚函数(virtual function) 与 纯虚函数(pure virtual function) 与 抽象类(abstract class)](https://blog.csdn.net/hackbuteer1/article/details/7558868)
[A typical example](https://www.programiz.com/cpp-programming/virtual-functions)

#### [C++: virtual table (aka, vtable)](figures_ch6/cpp_vtable.pdf)

## [C++: 几种 for loop 写法的对比](https://www.zhihu.com/question/54671272)
1. Regular for 
2. [for_each](https://zh.cppreference.com/w/cpp/algorithm/for_each)
3. range-based for 

## [C++: 关于 accumulate 的一些用法](figures_ch6/accumulate%20-%20Exploring%20an%20Algorithmic%20Empire%20-%20Ben%20Deane%20-%20CppCon%202016.pdf)

## [C++: 造轮子: map and reduce](figures_ch6/cpp_map_reduce.pdf)

## [C++: 模板形参包(parameter pack)](https://zh.cppreference.com/w/cpp/language/parameter_pack)
[一些可参考的资源](figures_ch6/cpp_parameter_pack.pdf)

## [C++: explicit keyword](figures_ch6/cpp_explicit.pdf)
在C++中explicit关键字只能用来修饰构造函数。使用explicit可以禁止编译器自动调用拷贝初始化，还可以禁止编译器对拷贝函数的参数进行隐式转换。

## C++: 函数作为参数 
[关于一般写法的讨论](https://www.quora.com/How-do-I-pass-a-function-as-an-argument-to-another-function-in-c++-1)

[使用 std::function 的写法](https://stackoverflow.com/a/31521586)

## [C++: std::function vs template](https://stackoverflow.com/questions/14677997/stdfunction-vs-template)
[A bit of discussion](https://www.zhihu.com/question/41684177/answer/91952216)

### C++: std::function
// TODO 

## C++: smart pointers 
[A brief illustration](https://stackoverflow.com/a/30143936)

## C++: CppCon 
1. constexpr 
   1. [CppCon 2015: Scott Schurr “constexpr: Introduction”](https://www.youtube.com/watch?v=fZjYCQ8dzTc)
   2. [CppCon 2017: Ben Deane & Jason Turner “constexpr ALL the Things!”](https://www.youtube.com/watch?v=PJwd4JLYJJY)
2. [accumulate](figures_ch6/cppcon_accumulate.pdf)
3. [smart pointers](figures_ch6/cppcon_smart_pointers.pdf)
4. [The best part of C++](figures_ch6/cppcon_best_part_of_cpp.pdf)
5. [lambda](figures_ch6/cppcon_lambda.pdf)

## C++ tricks 
1. static const -> static constexpr where we can. 
2. #ifndef的意思只是说，同一个cpp里面不能被复制两遍，但是不同的cpp是分开编译的.
3. #include <bits/stdc++.h> 包含了所有(??)标准库。

## C++ 工程搭建的注意点 
1. 头文件与源文件, [C++ 为什么要分 头文件和源文件](https://www.zhihu.com/question/280665935/answer/421522451)：
   1. 头文件中写声明(declaration, aka interface)，放在 include dir 中；
   2. 源文件中写实现(definition, aka implementation)，放在 src dir 中；
   3. 说明：
      1. 普通函数的声明放在 头文件 中，定义放在 源文件 中；静态函数同样 声明 放在 头文件 中，定义放在 源文件 中，除了一个例外：[静态内联函数](https://www.zhihu.com/question/26340568)(static inline); 
      2. 内联函数(inline functions) 一律声明和定义都在 头文件 中。一个例外：当这个内联函数只确定会被 一个 translation unit(源文件) 使用时，可以将 定义 放在 源文件(不需要一定是使用这个函数的源文件) 中；也就是说，如果一个普通函数的定义要放在头文件中，那么一律用 inline 修饰；
      3. 类的声明(包含 class 关键词)放在 头文件 中，定义(不包含 class 关键词)放在源文件中。原因是 每个使用 这个类的文件都应该使用相同的类，;
         1. 类的 数据成员(data members) 在 头文件 中 声明 但不 初始化(initialization)。类的 静态数据成员 一律也不初始化，只声明。如果是类外的 函数 参考 普通函数的 写法; 如果是类外的 常量，应该（也必须）声明的同时并初始化(**Use constexpr wherever we can**)。
            1. 由于 reference variable 必须在 declaration 的同时 initialization，所以应尽量避免（或完全不用） reference variables 作为 data member variables.
            2. 其他 不将 reference variables 作为 member variables 的原因，参考:
              - [Discussion 1](https://stackoverflow.com/a/892303)
              - [Discussion 2](https://stackoverflow.com/questions/957087/when-is-it-preferable-to-store-data-members-as-references-instead-of-pointers)
          2. 类的 成员函数(member functions) 在 头文件 中 声明。包括 constructor 在内的 成员函数一律不在 头文件 中定义，而在 相应的源文件 中定义。
      4. 模板类和模板函数 在 头文件 中，在 另一个头文件 中定义。
        1. 模板类和模板函数 不能放在 源文件 中；
        2. 一般来说，应该将 模板类和模板函数 的 声明和定义 都放在同一个 头文件 中，但基于以下几点考虑，将其 声明和定义 分开：
          1. 与 "接口与实现分离" 的指导思想 相一致；
          2. 方便开发者分辨文件内容；
          3. 与文档生成工具结合：写声明的头文件中写文档，写定义的头文件中写实现；
          4. 方便开发者发布源码。因此可以用 两个不同的头文件后缀，发布时，使用 .gitignore 等工具 忽略 写定义的头文件的后缀。
        3. 分离 模板类和模板函数 的接口和实现的方法 参考：
           1. [Discussion I](https://www.bogotobogo.com/cplusplus/template_declaration_definition_header_implementation_file.php)
           2. [Discussion II](https://stackoverflow.com/a/44774074)
           3. [Discussion III](https://stackoverflow.com/a/495056)
      5. 内联函数也可以参照 模板类和模板函数 的分离方法；但由于内联函数往往长度非常小，所以不必分离；但我们遵循一致性，选择一律将其分离；
      6. 普通静态变量在 头文件 中声明，源文件中定义(即 赋值)；注意在源文件中定义声明在头文件中的 静态变量或使用这些静态变量 以前，必须先 再一次声明。

[一些参考](https://www.zhihu.com/question/51789910/answer/127603777)
      
## g2o 

### 一些博客及教程 
[g2o学习笔记](https://www.jianshu.com/p/e16ffb5b265d)

[g2o 小结](https://zhuanlan.zhihu.com/p/36889150)

### [gauge freedom](https://www.quora.com/What-is-gauge-freedom-What-is-a-gauge-theory-in-GR-EM)

### 
