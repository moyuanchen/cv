#ifndef UTIL_H
#define UTIL_H
#include <cmath>

float cdf(float x) {
    return 0.5 * erfc(-x * M_SQRT1_2);
}

#endif