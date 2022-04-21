//
// Created by vitalyr on 2022/4/13.
//

#ifndef ALGORITHMS_VITALYR_PERSON_H
#define ALGORITHMS_VITALYR_PERSON_H

#include <string>
class Person {
std::string name;
std::string address;
public:
    Person(std::string n, std::string a) : name(n), address(a) {}
    std::string getName() { return name; }
    std::string getAddress() { return address; }
};


#endif //ALGORITHMS_VITALYR_PERSON_H
