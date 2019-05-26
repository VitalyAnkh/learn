//
// Created by vitalyr on 19-5-25.
//

#include "capp.h"
#include"swimming_pool.h"
#include <iostream>
#include<caca_conio.h>

using namespace std;

int CApp::initialize() {
    double r,h;
    int i;
    CGraph *p;
    ofstream out;
    while(true){
        //输出菜单
        cout<<"1 圆形游泳池"<<endl;
        cout<<"2 矩形游泳池"<<endl;
        cout<<"3 列出全部计算过程"<<endl;
        cout<<"0 退出程序"endl;
        cin>>i;
        switch(i){
            case 1:
                cout<<"请输入圆形游泳池的半径";
                cin>>r;
                p=new CCircle(r);
                break;
            case 2:
                cout<<"请输入矩形游泳池的长和宽：";
                cin>>r>>h;
                p=new CRect(r,h);
                break;

        }
        if (i==0)
            break;
        if (i==0||i==2){
            SwimmingPool s(p);
            cout<<"造价为： "<<s.compute_cost()<<endl<<endl;

            out.open("history_dat",ios_base::binary||ios_base::app);
            if (dynamic_cast<CCircle*>(p)){
                i=0;
                out.write((char*)&i,sizeof(int));

            }
            if (dynamic_cast<CRect*>(p)){
                i=1;
                out.write((char*)&i,sizeof(int));

            }
            s.write(out);
            out.close();
        }
        else if(i==3){
            ifstream in("history_dat",ios_base::binary);
            while(true){
                in.read((char*)&i,sizeof(int));
                if (in.eof())
                    break;

                if(i==0)
                    p=new CCircle;
                else if (i==1)
                    p=new CRect;

                SwimmingPool s(p);
                s.read(in);
                s.print();
            }
            in.close();
        }




    }
    return 0;
}