#ifndef BASEOPTION_H
#define BASEOPTION_H

template <typename T>
class BaseOption {
    public:
    float price() const {
        return static_cast<const T*>(this)->priceOption();
    }
};


#endif