#ifndef DERIVEDOPTION_H
#define DERIVEDOPTION_H
#include "util.h"
#include "baseOption.h"
#include <cmath>

class CallOption : public BaseOption<CallOption> {
    private:
    float r, spot, strike, tau, vol;

    friend class BaseOption<CallOption>; // Make BaseOption a friend class so it can access

    __attribute__((noinline)) float priceOption() const {
        float d1 = (log(spot/strike) + (r + (vol * vol) / 2) * tau)/(vol * sqrt(tau));
        float d2 = d1 - vol * sqrt(tau);
        return spot * cdf(d1) - strike * exp(-r * tau) * cdf(d2);
    }

    public:
    // Constructor to pass in the values
    CallOption(float r_, float spot_, float strike_, float tau_, float vol_)
        : r(r_), spot(spot_), strike(strike_), tau(tau_), vol(vol_) {}


};

class PutOption : public BaseOption<PutOption> {
    private:
    float r, spot, strike, tau, vol;

    friend class BaseOption<PutOption>; // Make BaseOption a friend class so it can access

    __attribute__((noinline)) float priceOption() const {
        float d1 = (log(spot/strike) + (r + (vol * vol) / 2) * tau)/(vol * sqrt(tau));
        float d2 = d1 - vol * sqrt(tau);
        return -spot * cdf(-d1) + strike * exp(-r * tau) * cdf(-d2);
    }

    public:
    // Constructor to pass in the values
    PutOption(float r_, float spot_, float strike_, float tau_, float vol_)
        : r(r_), spot(spot_), strike(strike_), tau(tau_), vol(vol_) {}


};


#endif