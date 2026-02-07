#ifndef VDERIVEDOPTION_H
#define VDERIVEDOPTION_H
#include <cmath>
#include "util.h"

class VCallOption : public VBaseOption {
    private:
    float r, spot, strike, tau, vol;

    public:
    VCallOption(float r_, float spot_, float strike_, float tau_, float vol_)
        : r(r_), spot(spot_), strike(strike_), tau(tau_), vol(vol_) {}

    float price() const override {
        float d1 = (log(spot / strike) + (r + (vol * vol) / 2) * tau) / (vol * sqrt(tau));
        float d2 = d1 - vol * sqrt(tau);
        return spot * cdf(d1) - strike * exp(-r * tau) * cdf(d2);
    }
    
};

class VPutOption : public VBaseOption {
    private:
    float r, spot, strike, tau, vol;
    float p;


    public:
    VPutOption(float r_, float spot_, float strike_, float tau_, float vol_)
        : r(r_), spot(spot_), strike(strike_), tau(tau_), vol(vol_) {}

    float price() const override {
        float d1 = (log(spot / strike) + (r + (vol * vol) / 2) * tau) / (vol * sqrt(tau));
        float d2 = d1 - vol * sqrt(tau);
        return -spot * cdf(-d1) + strike * exp(-r * tau) * cdf(-d2);
    }
    
};

#endif