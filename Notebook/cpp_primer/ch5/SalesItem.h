#ifndef SALESITEM_H
// we're here only if SALESITEM_H has not yet been defined
#define SALESITEM_H

#endif
#include <iostream>
#include <string>

class SalesItem
{
    friend std::istream &operator>>(std::istream &, SalesItem &);
    friend std::ostream &operator<<(std::ostream &, const SalesItem &);
    friend bool operator<(const SalesItem &, const SalesItem &);
    friend bool operator==(const SalesItem &, const SalesItem &);

public:
    SalesItem() : units_sold(0), revenue(0.0) {}
    SalesItem(const std::string &book) : book_number(book), units_sold(0), revenue(0) {}
    SalesItem(std::istream &is) { is >> *this; }

public:
    SalesItem &operator+=(const SalesItem &);
    std::string isbn() const { return book_number; }
    double avg_price() const;
    unsigned units_sold;
    double revenue;

private:
    std::string book_number;
};
inline bool compareIsbn(const SalesItem &lhs, const SalesItem &rhs)
{
    return lhs.isbn() == rhs.isbn();
}

// unsigned SalesItem::units_sold() const
// {
//     return (*this).units_sold;
// }

// nonmember binary operator: must declare a parameter for each operand
SalesItem operator+(const SalesItem &, const SalesItem &);

inline bool operator==(const SalesItem &lhs, const SalesItem &rhs)
{
    return lhs.isbn() == rhs.isbn() &&
           lhs.units_sold == rhs.units_sold &&
           lhs.revenue == rhs.revenue;
}

inline bool operator!=(const SalesItem &lhs, const SalesItem &rhs)
{
    return !(lhs == rhs); // != defined in terms of operator==
}

// assumes that both objects refer to the same ISBN
SalesItem &SalesItem::operator+=(const SalesItem &rhs)
{
    units_sold += rhs.units_sold;
    revenue += rhs.revenue;
    return *this;
}

SalesItem operator+(const SalesItem &lhs, const SalesItem &rhs)
{
    SalesItem tmp(lhs); // copy (|lhs|) into a local object that we'll return
    tmp += rhs;
    return tmp;
}

std::istream &operator>>(std::istream &in, SalesItem &s)
{
    double price;
    in >> s.book_number >> s.units_sold >> price;
    // check that the input succeeded
    if (in)
        s.revenue = price * s.units_sold;
    else
        s = SalesItem(); // input failed: reset object to default state
    return in;
}

std::ostream &operator<<(std::ostream &out, const SalesItem &s)
{
    out << s.isbn() << " " << s.units_sold << " " << s.revenue << " " << s.avg_price();
    return out;
}

double SalesItem::avg_price() const
{
    if (units_sold)
        return revenue / units_sold;
    else
        return 0;
}