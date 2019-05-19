//文件:alley.h
#ifndef#define__ALLEY_H__
__ALLEY_H__

#include<fstream>
#include<iostream>
using namespace std;
const double PIE = 3.14159;

//定义一个抽象的图形类,主要功能是提供一个统一的接口
class CGraph {
public:
//计算扩大ext单位后的面积
    virtual double area(const double ext = 0) const = 0;

//计算扩大ext单位后的图形的周长
    virtual double perimeter(const double ext = 0) const = 0;

//将图形的信息写入到文件中
    virtual ofstream &write(ofstream &o) const = 0;

//从文件中读取信息并更新图形的信息
    virtual ifstream &read(ifstream &in) = 0;

//打印图形信息
    virtual void print() = 0;
};

//定义一个圆类,从CGraph派生
class CCircle : public CGraph {
public:
//由于该类没有使用动态内存,所以不需要明确定义复制构造函数、赋值运算符
    CCircle(double r = 0) : m_r(r) {}

//半径增加ext后的面积,没有限定ext必须为非负值
    double area(const double ext) const { return PIE * (m_r + ext) * (m_r + ext); }

//半径增加ext后的周长
    double perimeter(const double ext) const { return PIE * 2 * (m_r + ext); }

//将图形的信息写入到文件中
    ofstream &write(ofstream &o) const {
        o.write((char *) &m_r, sizeof(double));
        return o;
    }

//从文件中读取信息并更新图形的信息
    ifstream &read(ifstream &in) {
        in.read((char *) &m_r, sizeof(double));
        return in;
    }

//打印图形信息
    void print() {
        cout << "圆形,半径:" << m_r << " ";
    }

private:
    double m_r;
};

//定义一个矩形类,从CGraph派生
class CRect : public CGraph {
public:
//由于该类没有使用动态内存,所以不需要明确定义复制构造函数、赋值运算符
    CRect(double w = 0, double h = 0) : m_w(w), m_h(h) {}

//各边长增加2 * ext后的面积,没有限定ext必须为非负值
    double area(const double ext) const { return (m_w + 2 * ext) * (m_h + 2 * ext); }

//各边增加2 * ext后的周长
    double perimeter(const double ext) const { return 2 * (m_w + m_h + 4 * ext); }

//将图形的信息写入到文件中
    ofstream &write(ofstream &o) const {
        o.write((char *) &m_w, sizeof(double));
        o.write((char *) &m_h, sizeof(double));
        return o;
    }

//从文件中读取信息并更新图形的信息
    ifstream &read(ifstream &in) {
        in.read((char *) &m_w, sizeof(double));
        in.read((char *) &m_h, sizeof(double));
        return in;
    }

//打印图形信息
    void print() {
        cout << "矩形," << m_w << " * " << m_h << " ";
    }

private:
    double m_w; //矩形的宽
    double m_h; //矩形的高
};

class Alley {
public:
//根据一个图形构造一个过道对象,图形g指向的对象一定是通过new运算符
//生成的对象;调用该函数之后,g指向的空间就交给构造的Alley对象管理了
    Alley(CGraph *g);

    virtual ~Alley();

    double fence_cost() const; //计算栅栏的造价
    double alley_cost() const; //计算过道的造价
    void print() //打印过道信息
    {
        m_pGraph->print();
    }

//将信息保存到文件中
    ofstream &write(ofstream &o) const {
        m_pGraph->write(o);
        o.write((char *) &WIDTH, sizeof(double));
        o.write((char *) &ALLEY_COST, sizeof(double));
        o.write((char *) &FENCE_COST, sizeof(double));
        return o;
    }

//从文件中读取信息
    ifstream &read(ifstream &in) {
        m_pGraph->read(in);
        in.read((char *) &WIDTH, sizeof(double));
        in.read((char *) &ALLEY_COST, sizeof(double));
        in.read((char *) &FENCE_COST, sizeof(double));
        return in;
    }

private:
//由于有指针成员,所以应该设计复制构造函数和赋值运算符实现深复制。
//然而,做深复制时需要具体判断m_pGraph指向的图形到底是什么,这是
//很难的,因为你无法事先预计到都有多少类图形。因此实现上述两个函数
//是非常困难的。为了保证程序的可扩展性,将上述两个函数声明为私有的
    Alley(const Alley &a) : WIDTH(a.WIDTH), ALLEY_COST(a.ALLEY_COST),
                            FENCE_COST(a.FENCE_COST) {}

    Alley &operator=(const Alley &a) { return *this; }

private:
    CGraph *
            m_pGraph;
    const double WIDTH;
    const double ALLEY_COST;
    const double FENCE_COST;
};

#endif
//文件:alley.cpp
#include "Alley.h"

Alley::Alley(CGraph *g) : WIDTH(3), ALLEY_COST(20), FENCE_COST(35) {
    m_pGraph = g; //此后,g指向的空间就由对象来管理了
}

Alley::~Alley() { delete m_pGraph; }

double Alley::fence_cost() const {
    return m_pGraph->perimeter(WIDTH) * FENCE_COST;
}

double Alley::alley_cost() const {
    return (m_pGraph->area(WIDTH) - m_pGraph->area()) * ALLEY_COST;
}
//文件:swimmingpool.h
#ifndef __SWIMMINGPOOL_H__
#define __SWIMMINGPOOL_H__

#include "Alley.h"

class SwimmingPool {
public:
//根据一个图形构造一个游泳池对象,图形g指向的对象一定是通过new运算符
//生成的对象;调用该函数之后,g指向的空间就交给构造的游泳池对象管理了
    SwimmingPool(CGraph *g);

    double compute_cost();

    void print() {
        theAlley.print();
        cout << "造价为:" << compute_cost() << endl;
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

#endif
//文件:swimmingpool.cpp
#include "SwimmingPool.h"

SwimmingPool::SwimmingPool(CGraph *g) : theAlley(g) {
}

double SwimmingPool::compute_cost() {
    return theAlley.alley_cost() + theAlley.fence_cost();
}
//文件:capp.h
#ifndef __CAPP_H__
#define __CAPP_H__

#include<iostream>

using namespace std;

//抽象一个应用程序类,它只有一个初始化应用程序的函数
class CApp {
public:
    int
};

initialize();

#endif
//文件:capp.cpp
#include"SwimmingPool.h"
#include<iostream>
#include<conio.h>
#include"CApp.h"

using namespace std;

int CApp::initialize() {
    double r, h;
    int i;
    CGraph *p;
    ofstream out;
    while (true) { //输出菜单
        cout << "1 圆形游泳池" << endl;
        cout << "2 矩形游泳池" << endl;
        cout << "3 列出全部计算过程" << endl;
        cout << "0 退出程序" << endl;
        cin >> i;
        switch (i) {
            case 1:
                cout << "请输入圆形游泳池的半径:";
                cin >> r;
                p = new CCircle(r); //构造一个圆类对象
                break;
            case 2:
                cout << "请输入矩形游泳池的长和宽:";
                cin >> r >> h;
                p = new CRect(r, h);
                break;
        }
        if (i == 0)
            break;
        if (i == 1 || i == 2) {
//因为使用多态,所以无论形状是什么,都无需修改游泳池的程序
            SwimmingPool s(p);
            cout << "造价为:" << s.compute_cost() << endl << endl;
//下面将本次计算造价的信息写入到文件中。
//由于游泳池形状是不确定的,所以在写入到文件之前要确定一个标记,
//指明是什么形状,这里用0表示圆形,用1表示矩形
//以二进制格式和追加方式打开文件
            out.open("history.dat", ios_base::binary | ios_base::app);
            if (dynamic_cast<CCircle *>(p)) {
                i = 0;
                out.write((char *) &i, sizeof(int)); //写入标记
            }
            if (dynamic_cast<CRect *>(p)) {
                i = 1;
                out.write((char *) &i, sizeof(int)); //写入标记
            }
            s.write(out); //将游泳池的数据写入到文件
            out.close();
        } else if (i == 3) {
            ifstream in("history.dat", ios_base::binary);
            while (true) {
                in.read((char *) &i, sizeof(int)); //读取标记
                if (in.eof()) //如果读到了文件尾,则跳出循环
                    break;
//根据标记构造不同的图形对象
                if (i == 0)
                    p = new CCircle; //构造一个默认的圆形对象
                else if (i == 1)
                    p = new CRect; //构造一个默认的矩形对象
            }
        }
        SwimmingPools.read(in);
        s.print();
    }
    in.close();
    s(p);
//根据图形对象构造一个游泳池对象
//游泳池对象从文件中读取数据
//打印游泳池造价信息
}

return 0;
CApp theApp;
int{
main()

//程序的运行是通过全局的应用程序类的对象theApp调用其初始化函数
theApp.

initialize();

}
return 0;
