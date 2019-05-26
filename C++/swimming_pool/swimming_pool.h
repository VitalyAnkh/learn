//
// Created by vitalyr on 19-5-25.
//

#ifndef SWIMMING_POOL_SWIMMING_POOL_H
#define SWIMMING_POOL_SWIMMING_POOL_H

#include"alley.h"

class SwimmingPool {
public:
    SwimmingPool(CGraph *g);

    double compute_cost();

    void print() {
        theAlley.print();
        cout << "造价为： " << compute_cost() << endl;
    }

    ofstream &write(ofstream &o) const {
        theAlley.write(o);
        return o;
    }

    ifstream &read(ifstream &in) {
        theAlley.read(in);
        return in;
    }

private:
    Alley theAlley;
};


#endif //SWIMMING_POOL_SWIMMING_POOL_H
