#ifndef CHOLESKEY
#define CHOLESKEY
#include <vector>

template <typename floatlike>
class CholeskyDecomposition {
    private:
    int size;
    std::vector<std::vector<floatlike>> Cov;
    std::vector<std::vector<floatlike>> L; // Lower triangular decomposition
    void initialize_L(int size);

    public:
    CholeskyDecomposition(int size); // Initialize the class with empty matrix of fixed size
    CholeskyDecomposition(std::vector<std::vector<floatlike>> Cov); // Initialize the class with covariance matrix Cov

    void setCov(std::vector<std::vector<floatlike>> Cov); // set the cov matrix

    void decompose();
    void decompose(std::vector<std::vector<floatlike>> Cov); // Decompose Cov to L where Cov = LL^T
    std::vector<std::vector<floatlike>> get_L(); // return the fitted L value
};

using Cholesky16 = CholeskyDecomposition<_Float16>;
using Cholesky32 = CholeskyDecomposition<float>;
using Cholesky64 = CholeskyDecomposition<double>;
using Cholesky128 = CholeskyDecomposition<long double>;
#endif