#include <iostream>

int main() {
    // This macro is defined by the compiler to indicate the C++ version
    long standard = __cplusplus;

    if (standard == 199711L) {
        std::cout << "C++ version: C++98/C++03" << std::endl;
    } else if (standard == 201103L) {
        std::cout << "C++ version: C++11" << std::endl;
    } else if (standard == 201402L) {
        std::cout << "C++ version: C++14" << std::endl;
    } else if (standard == 201703L) {
        std::cout << "C++ version: C++17" << std::endl;
    } else if (standard == 202002L) {
        std::cout << "C++ version: C++20" << std::endl;
    } else if (standard == 202302L) {
        std::cout << "C++ version: C++23" << std::endl;
    } else {
        std::cout << "C++ version: Unknown or experimental standard (code: " << standard << "L)" << std::endl;
    }

    return 0;
}
