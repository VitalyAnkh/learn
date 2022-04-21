//
// Created by vitalyr on 2022/4/1.
//

#ifndef ALGORITHMS_VITALYR_SALESDATA_H
#define ALGORITHMS_VITALYR_SALESDATA_H

#include <string>

class SalesData {
public:
    std::string isbn() const { return this->book_number; }

    SalesData &combine(const SalesData &);

    double average_price() const;

    // data member
    std::string book_number;
    unsigned int units_sold = 0;
    double revenue = 0;

    SalesData() = default;
    SalesData(std::string const&s): book_number(s){}
};

SalesData add(SalesData const &, SalesData const &);

std::ostream &print(std::ostream &, SalesData &);

std::istream &read(std::istream);

double SalesData::average_price() const {
    if (units_sold) {
        return revenue / units_sold;
    } else {
        return 0;
    }
}

SalesData &SalesData::combine(SalesData const &rhs) {
    units_sold += rhs.units_sold;
    revenue += rhs.revenue;
    return *this;
}

std::istream &read(std::istream &is, SalesData &item) {
    double price = 0;
    is >> item.book_number >> item.units_sold >> price;
    item.revenue = price * item.units_sold;
    return is;
}

std::ostream &print(std::ostream &os, SalesData &item) {
    os << item.isbn() << " " << item.units_sold << " " << item.revenue << " " << item.average_price();
    return os;
}

SalesData add(SalesData const &lhs, SalesData const &rhs) {
    SalesData sum = lhs;
    sum.combine(rhs);
    return sum;
}

#endif //ALGORITHMS_VITALYR_SALESDATA_H
