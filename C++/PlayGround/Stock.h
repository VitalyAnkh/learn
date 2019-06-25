//
// Created by vitalyr on 19-6-23.
//

#ifndef PLAYGROUND_STOCK_H
#define PLAYGROUND_STOCK_H


#include <string>

class Stock {
private:
    std::string company;
    long shares;
    double share_val;
    double total_val;

    void set_tot() {
        total_val = shares * share_val;
    }

public:
    void acquire(const std::string& CO,long n,double pr);
    void buy(long num,double price);
    void sell(long num, double price);
    void update(double price);
    void show();
};


#endif //PLAYGROUND_STOCK_H
