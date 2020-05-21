2020/05/21
---
- [Topic; Implement codes of Chapter 4 -- Non-linear Optimization](#topic-implement-codes-of-chapter-4----non-linear-optimization)
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

# Topic; Implement codes of Chapter 4 -- Non-linear Optimization

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




