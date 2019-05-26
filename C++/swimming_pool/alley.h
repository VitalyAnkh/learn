//
// Created by vitalyr on 19-5-19.
//

#ifndef SWIMMING_POOL_ALLEY_H
#define SWIMMING_POOL_ALLEY_H

#include<fstream>
#include <iostream>

using namespace std;
const double PI = 3.14159;

// 定义一个抽象的图形类，主要功能是提供一个统一的接口
class CGraph {
public:
    // 计算扩大ext单位后的面积
    virtual double area(const double ext = 0) const = 0;

    virtual double perimeter(const double ext = 0) const = 0;

    // 将图形的信息写入文件中
    virtual ofstream &write(ofstream &o) const = 0;

    //从文件中读取信息并更新图形的信息
    virtual ifstream &read(ifstream &in) = 0;

    //打印图形信息
    virtual void print() = 0;
};

// 定义一个圆类，从CGraph派生
class CCircle : public CGraph {
public:
    CCircle(double r = 0) : m_r(r) {

    }

    //半径增加ext后的面积，没有限定ext必须为非负值
    double area(const double ext) const {
        return PI * (m_r + ext) * (m_r + ext);
    }

    double perimeter(const double ext) const {
        return PI * 2 * (m_r + ext);
    }

    ofstream &write(ofstream &o) const {
        o.write((char *) &m_r, sizeof(double));
        return o;
    }

    ifstream &read(ifstream &in) {
        in.read((char *) &m_r, sizeof(double));
        return in;
    }

    void print() {
        cout << "圆形，半径：" << m_r << " ";

    }

private:
    double m_r;
};

class CRect : public CGraph {
public:
    //由于该类没有使用动态内存，所以不需要明确定义复制构造函数、赋值运算符
    CRect(double w = 0, double h = 0) : m_w(w), m_h(h) {}

    double area(const double ext) const {
        return (m_2 + 2 * ext) * (m_2 + 2 * ext);
    }

    double perimeter(const double ext) const {
        return 2 * (m_w + m_h + 4 * ext);
    }

    ofstream &write(ofstream &o) const {
        o.write((char *) &m_w, sizeof(double));
        o.write((char *) &m_h, sizeof(double));
        return o;
    }

    ifstream &read(ifstream &in) {
        in.read((char *) &m_w, sizeof(double));
        in.read((char *) &m_h, sizeof(double));
        return in;
    }

    void print() {
        cout << "矩形， " << m_w << "*" << m_h << " ";
    }

private:
    double m_w;//矩形的宽
    double m_h;//矩形的高
};

class Alley {
public:
    //根据一个图形构造一个过道对象，图形g指向的对象一定是通过new运算符
    //生成的对象：调用该函数后，g指向的空间就交给构造的Alley对象管理了
    Alley(CGraph *g);

    virtual ~Alley();

    double fence_cost() const;

    double alley_cost() const;

    void print() {
        m_pGraph->print();
    }
    ofstream & write(ofstream& o)const{
        m_pGraph->write(o);
        o.write((char*)&WIDTH,sizeof(double));
        o.write((char*)&ALLEY_COST,sizeof(double));
        o.write((char*)&FENCE_COST,sizeof(double));
        return o;
    }

    ifstream & read(ifstream &in){
        m_pGraph->read(in);
        in.read((char*)&WIDTH,sizeof(double));
        in.read((char*)&ALLEY_COST,sizeof(double));
        in.read((char*)&FENCE_COST,sizeof(double));
        return in;
    }
private:
    Alley(const Alley &a) : WIDTH(a.WIDTH), ALLEY_COST(a.ALLEY_COST), FENCE_COST(a.FENCE_COST) {}

    Alley &operator=(const Alley &a) {
        return *this;
    }

private:
    CGraph *m_pGraph;
    const double WIDTH;
    const double ALLEY_COST;
    const double FENCE_COST;

};

#endif //SWIMMING_POOL_ALLEY_H
