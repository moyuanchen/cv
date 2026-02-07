#ifndef VBASEOPTION_H
#define VBASEOPTION_H

class VBaseOption {
    public:
    virtual ~VBaseOption() = default;
    virtual float price() const = 0;
};

#endif