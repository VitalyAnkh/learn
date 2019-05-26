//
// Created by vitalyr on 19-5-25.
//

#ifndef PLAYGROUND_SALESDATA_H
#define PLAYGROUND_SALESDATA_H


#include <string>

class SalesData {
    std::string isbn() const {return bookNo;}
    SalesData& combine (const SalesData&);
    double avg_price() const ;
    std::string BookNo;
    unsigned units_sold =0;
    double revenue=0.0;

};
SalesData add (const SalesData&, const SalesData&);
std::ostream &print(std::ostream&,const SalesData&);
std::istream &read(std::istream&,SalesData&);

double SalesData::avg_price() const {
    if(units_sold)
        return revenue/units_sold;
    else
        return 0;
}

SalesData& SalesData::combine(const SalesData &rhs) {
    units_sold+=rhs.units_sold;
    revenue+=rhs.revenue;
    return *this;
}



#endif //PLAYGROUND_SALESDATA_H
