//
// Created by vitalyr on 19-5-25.
//
#include "alley.h"

Alley::Alley(CGraph*g):WIDTH(3),ALLEY_COST(20),FENCE_COST(35){
    m_pGraph=g;//此后，g指向的空间就由对象来管理了
}


Alley::~Alley(){
    delete m_pGraph;
}

double Alley::fence_cost() const {
    return m_pGraph->perimeter(WIDTH)*FENCE_COST;
}

double Alley::alley_cost() const {
    return (m_pGraph->area(WIDTH)-m_pGraph->area())*ALLEY_COST;
}

