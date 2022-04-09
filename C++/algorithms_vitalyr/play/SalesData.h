//
// Created by vitalyr on 2022/4/1.
//

#ifndef ALGORITHMS_VITALYR_SALESDATA_H
#define ALGORITHMS_VITALYR_SALESDATA_H

#include <string>

class SalesData {
    std::string isbn() const { return book_number; }

    SalesData &combine(const SalesData &);

    double average_price() const;

    // data member
    std::string book_number;
    unsigned int units_sold = 0;
    double revenue = 0;

};

SalesData add(SalesData const &, SalesData const &);
std::ostream& print(std::ostream&, SalesData&);
std::istream& read(std::istream)

#endif //ALGORITHMS_VITALYR_SALESDATA_H
