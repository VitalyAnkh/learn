//
// Created by vitalyr on 19-5-27.
//

#include<iostream>
#include <cstring>
#include "MyString.h"

using namespace std;
//#pragma  warning(disable:4996)

MyString::MyString() {
    m_len = 0;
    m_pbuf = new char('\0');
}

MyString::MyString(const MyString &str) : m_len(str.m_len) {
    m_pbuf = new char[m_len + 1];
    strcpy(m_pbuf, str.m_pbuf);
}

const char *MyString::get_string() const {
    return m_pbuf;
}

const char *MyString::set_string(const char *p) {
    delete[] m_pbuf;
    if (nullptr == p) {
        m_pbuf = new char('\0');
        m_len = 0;
    } else {
        m_len = strlen(p);
        m_pbuf = new char[m_len + 1];
        strcpy(m_pbuf, p);
    }
    return m_pbuf;
}

MyString::~MyString() {
    delete[] m_pbuf;
}

MyString &MyString::operator=(const MyString &str) {
    if (this != &str) // 防止自赋值
    {
        delete[] m_pbuf;
        m_len = str.m_len;
        m_pbuf = new char[m_len + 1];
        strcpy(m_pbuf, str.m_pbuf);
    }
    return *this;
}

ostream &operator<<(ostream &o, const MyString &str) {
    o << str.m_len << " " << str.m_pbuf;
    return o;
}

ofstream &MyString::write(ofstream &o) {
    o << m_len << " " << m_pbuf;
    return o;
}

ifstream &operator>>(ifstream &in, MyString &str) {
    delete[] str.m_pbuf;
    in >> str.m_len;
    in.get();
    str.m_pbuf = new char[str.m_len + 1];
    in.read(str.m_pbuf, str.m_len);
    str.m_pbuf[str.m_len] = '\0';
    return in;
}

ifstream &MyString::read(ifstream &in) {
    delete[] m_pbuf;
    in >> m_len;
    in.get();
    m_pbuf = new char[m_len + 1];
    in.read(m_pbuf, m_len);
    m_pbuf[m_len] = '\0';
    return in;
}