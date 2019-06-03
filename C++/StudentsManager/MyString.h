//
// Created by vitalyr on 19-5-27.
//

#ifndef STUDENTSMANAGER_MYSTRING_H
#define STUDENTSMANAGER_MYSTRING_H

#include<iostream>
#include<fstream>

using namespace std;

class MyString {
public:
    MyString();

    MyString(const MyString &str);

    ~MyString();

    MyString &operator=(const MyString &str);

    friend ostream &operator<<(ostream &o, const MyString &str);

    ofstream &write(ofstream &o);

    ifstream &read(ifstream &in);

    friend ifstream &operator>>(ifstream &in, MyString &str);

public:
    const char *get_string() const;

    const char *set_string(const char *p);

    int get_length() const { return m_len; }

private:
    int m_len;
    char *m_pbuf;
};


#endif //STUDENTSMANAGER_MYSTRING_H
