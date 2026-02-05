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

template <typename floatlike>
CholeskyDecomposition<floatlike>::CholeskyDecomposition(std::vector<std::vector<floatlike>> Cov) {
    this->Cov = Cov;
    this->size = Cov.size();
    this->initialize_L(this->size);
    this->decompose();
}

template <typename floatlike>
void CholeskyDecomposition<floatlike>::setCov(std::vector<std::vector<floatlike>> Cov) {
    this->Cov = Cov;
    // Reset the L matrix after Cov change
    this->size = Cov.size();
    this->initialize_L(this->size);
}

template <typename floatlike>
void CholeskyDecomposition<floatlike>::decompose(std::vector<std::vector<floatlike>> Cov) {
    this->setCov(Cov);
    this->decompose();
}

template class CholeskyDecomposition<_Float16>;
template class CholeskyDecomposition<float>;
template class CholeskyDecomposition<double>;
template class CholeskyDecomposition<long double>;