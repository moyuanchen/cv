#ifndef CHOLESKY_H // Standard naming convention
#define CHOLESKY_H

#include <vector>
#include <cmath>
#include <stdexcept>

template <typename T>
class CholeskyDecomposition {
private:
    int n;
    // FLATTENED MATRIX: Size is n * n. 
    // Access element (i, j) via data[i * n + j]
    std::vector<T> L; 

public:
    explicit CholeskyDecomposition(int size) : n(size), L(size * size, 0.0) {}

    // 1. Pass by CONST REFERENCE to avoid copying
    // 2. Use a flat vector input for performance
    void decompose(const std::vector<T>& matrix_flat) {
        if (matrix_flat.size() != n * n) {
            throw std::invalid_argument("Matrix dimensions do not match.");
        }

        // Reset L to zero before starting
        std::fill(L.begin(), L.end(), 0.0);

        for (int i = 0; i < n; i++) {
            for (int j = 0; j <= i; j++) {
                T sum = 0;
                
                // Cache-friendly inner loop (contiguous memory access)
                for (int k = 0; k < j; k++) {
                    sum += L[i * n + k] * L[j * n + k];
                }

                if (i == j) {
                    // Diagonal Element
                    T val = matrix_flat[i * n + i] - sum;
                    if (val <= 0) throw std::runtime_error("Matrix is not Positive Definite");
                    L[i * n + j] = std::sqrt(val);
                } else {
                    // Off-Diagonal Element
                    L[i * n + j] = (1.0 / L[j * n + j]) * (matrix_flat[i * n + j] - sum);
                }
            }
        }
    }

    // Return by CONST REFERENCE to allow read-access without copying
    const std::vector<T>& get_L() const {
        return L;
    }
};

using Cholesky32 = CholeskyDecomposition<float>;
using Cholesky64 = CholeskyDecomposition<double>;

#endif