#include <iostream>
#include <random>
#include <vector>
#include <chrono>

#include "util.h"
#include "baseOption.h"
#include "derivedOption.h"
#include "vBaseOption.h"
#include "vDerivedOption.h"
int main() {
    std::random_device rd;
    std::mt19937 gen(rd());

    std::uniform_real_distribution<float> rateDist(0.0f, 0.05f);
    std::uniform_real_distribution<float> volDist(0.01f, 0.2f);
    std::uniform_real_distribution<float> tauDist(0.01f, 2.0f);
    std::uniform_real_distribution<float> priceDist(100.0f, 400.0f);

    int N = 1000000;

    // CRTP instantiation
    std::vector<CallOption> callOptionPortfolio;
    callOptionPortfolio.reserve(N);
    std::vector<PutOption>  putOptionPortfolio;
    putOptionPortfolio.reserve(N);

    // Virtual instantiation
    std::vector<VBaseOption*> vOptionPortfolio;
    vOptionPortfolio.reserve(2*N);

    for (int i = 0; i < N; i++) {
        float r = rateDist(gen);
        float spot = priceDist(gen);
        float strike = priceDist(gen);
        float tau = tauDist(gen);
        float vol = volDist(gen);

        callOptionPortfolio.emplace_back(r, spot, strike, tau, vol);
        putOptionPortfolio.emplace_back(r, spot, strike, tau, vol);

        vOptionPortfolio.push_back(new VCallOption(r, spot, strike, tau, vol));
        vOptionPortfolio.push_back(new VPutOption(r, spot, strike, tau, vol));
    }

    // CRTP calls
    float totalCRTP = 0;
    auto start = std::chrono::high_resolution_clock::now();
    for (auto &option : callOptionPortfolio) {
        totalCRTP += option.price();
    }
    for (auto &option: putOptionPortfolio) {
        totalCRTP += option.price();
    }
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end-start);
    
    std::cout << "CRTP pricing of " << 2 * N << " options took " << duration.count() << " microseconds" << std::endl;
    std::cout << "Portfolio Value: " << totalCRTP << std::endl;

    // virtual calls
    float totalVirtual = 0;
    start = std::chrono::high_resolution_clock::now();
    
    for (auto *option : vOptionPortfolio) {
        totalVirtual += option->price();
    }

    end = std::chrono::high_resolution_clock::now();
    duration = std::chrono::duration_cast<std::chrono::microseconds>(end-start);
    
    std::cout << "Virtual pricing of " << 2 * N << " options took " << duration.count() << " microseconds" << std::endl;
    std::cout << "Portfolio Value: " << totalVirtual << std::endl;
        // CRTP calls
    totalCRTP = 0;
    start = std::chrono::high_resolution_clock::now();
    for (auto &option : callOptionPortfolio) {
        totalCRTP += option.price();
    }
    for (auto &option: putOptionPortfolio) {
        totalCRTP += option.price();
    }
    end = std::chrono::high_resolution_clock::now();
    duration = std::chrono::duration_cast<std::chrono::microseconds>(end-start);
    
    std::cout << "CRTP pricing of " << 2 * N << " options took " << duration.count() << " microseconds" << std::endl;
    std::cout << "Portfolio Value: " << totalCRTP << std::endl;
    return 0;
}