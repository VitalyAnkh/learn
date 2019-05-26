//
// Created by vitalyr on 19-5-25.
//

#include "swimming_pool.h"

SwimmingPool::SwimmingPool(CGraph *g) :theAlley(g){

}

double SwimmingPool::compute_cost() {
    return theAlley.alley_cost()+theAlley.fence_cost();
}

