Code Notes 
2020/06/16 
--- 

# C++: the define macro
[Use or not use define? And when?](https://stackoverflow.com/a/10261933/11240780)

[object-like and function-like defines](https://zh.cppreference.com/w/cpp/preprocessor/replace)

# C++: file handling
[A introductory level of file handling in C++](http://www.cplusplus.com/doc/tutorial/files/)
- ofstream 
- ifstream 
- fstream 

![](cpp/stream_derivation_graph.png)

Bonus: [C-style file handling](http://www.cplusplus.com/reference/cstdio/)

## <cstdio> or <iostream>?
[A brief discussion](https://qr.ae/pNKYne)

[Another discussion](https://qr.ae/pNKYvR)

## [C++: getline function](http://www.cplusplus.com/reference/string/string/getline/)

### [getline in if / while conditions](https://stackoverflow.com/a/8204171/11240780)

## [Tips and tricks for using C++ I/O (input/output)](http://augustcouncil.com/~tgibson/tutorial/iotips.html)
Not very useful.

## C++: Buffers and Synchronization
![](cpp/buffers_and_synchronization.png)

# C++: size / length of a string
## [C++: the null terminator in chars](https://stackoverflow.com/a/43424642/11240780)
[C function: strlen()](http://www.cplusplus.com/reference/cstring/strlen/)

## [C++: Find the length / size of a string](https://www.geeksforgeeks.org/5-different-methods-find-length-string-c/)

## [C++: sizeof operator](https://en.cppreference.com/w/cpp/language/sizeof)
[Factors impact the result of the sizeof() operator](https://www.cprogramming.com/tutorial/size_of_class_object.html)

## [C++: size_t type](https://en.cppreference.com/w/cpp/types/size_t)

## [C++: close the opened file as soon as possible](https://stackoverflow.com/a/20556047/11240780)
With the help of stringstream.

## [typeid](https://zh.cppreference.com/w/cpp/language/typeid)

## [Three return paradigms](https://www.learncpp.com/cpp-tutorial/74a-returning-values-by-value-reference-and-address/)
- return by value 
- return by address (pointer) 
- return by reference

## [cout true and false rather than 1 and 0](https://stackoverflow.com/a/15960062/11240780)

## [std::count and std::count_if](https://zh.cppreference.com/w/cpp/algorithm/count)

## [count #lines in a file](https://stackoverflow.com/a/3072840/11240780)

## ['\n' or "\n" or std::endl](https://stackoverflow.com/a/8311177/11240780)
### [Four ways to flush the std::cout buffer](https://support.microsoft.com/en-us/help/94227/how-to-flush-the-cout-buffer-in-visual-c)

## [cin as a condition](https://stackoverflow.com/a/6791545/11240780)

## [Why if / while (!stream.eof()) considered wrong?](https://stackoverflow.com/a/5605159/11240780)

## The >> operator can be a indicator for reading formatted input
- Indicate the reading state 
- Check if the number of "objects" in one line is valid

The reason why we can do this: The >> operator is overridden for std::string and **uses whitespace** as a separator

## [Use std::cout or std::cerr and when?](https://stackoverflow.com/a/16773043/11240780)

## [Use googletest to do unit testing in C++](https://github.com/google/googletest/blob/master/googletest/docs/primer.md)

## (binary) blob / BLOB
A Binary Large OBject (BLOB) is a collection of binary data stored as a single entity in a database management system. Blobs are typically images, audio or other multimedia objects, though sometimes binary executable code is stored as a blob.

## [Macros cannot be placed within any namespaces](https://stackoverflow.com/a/11791202/11240780)

## 