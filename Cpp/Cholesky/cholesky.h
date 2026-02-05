#ifndef CHOLESKEY
#define CHOLESKEY
#include <vector>

class CholeskyDecomposition {
    private:
    std::vector<std::vector<float>> L; // Lower triangular decomposition

    public:
    CholeskyDecomposition(int size); // Initialize the class with empty matrix of fixed size
    CholeskyDecomposition(std::vector<std::vector<float>> Cov); // Initialize the class with covariance matrix Cov

    void decompose(std::vector<std::vector<float>> Cov); // Decompose Cov to L where Cov = LL^T
    std::vector<std::vector<float>> get_L(); // return the fitted L value
};
#endif