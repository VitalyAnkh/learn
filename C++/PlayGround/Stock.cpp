//
// Created by vitalyr on 19-6-23.
//
#include<iostream>
#include "Stock.h"

void Stock::update(double price) {
    share_val = price;
    set_tot();
}


