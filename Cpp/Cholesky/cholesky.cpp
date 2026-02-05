#include <iostream>
#include <vector>
#include "cholesky.h"

template <typename floatlike>
void CholeskyDecomposition<floatlike>::initialize_L(int size) {
    std::vector<std::vector<floatlike>> _L(size, std::vector<floatlike>(size, 0));
    this->L = _L;
}

template <typename floatlike>
CholeskyDecomposition<floatlike>::CholeskyDecomposition(int size) {
    this->size = size;
    this->initialize_L(size);
}

template class CholeskyDecomposition<_Float16>;
template class CholeskyDecomposition<float>;
template class CholeskyDecomposition<double>;
template class CholeskyDecomposition<long double>;