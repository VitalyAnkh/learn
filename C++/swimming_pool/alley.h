//
// Created by vitalyr on 19-5-19.
//

#ifndef SWIMMING_POOL_ALLEY_H
#define SWIMMING_POOL_ALLEY_H
#include<fstream>
#include <iostream>
using namespace std;
const double PI=3.14159;
// 定义一个抽象的图形类，主要功能是提供一个统一的接口
class CGraph{
public:
    // 计算扩大ext单位后的面积
    virtual double area(const double ext=0) const=0;
    virtual double perimeter(const double ext=0) const =0;
    // 将图形的信息写入文件中

    virtual ofstream &write(ofstream & o)
};
#endif //SWIMMING_POOL_ALLEY_H
