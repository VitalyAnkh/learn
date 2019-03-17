#pragma once
#include <cstring>
#include <cstdio>
class MyString
{
  public:
    MyString();
    ~MyString();
    char *get_string m_pbuf);
    char *set_string(char *p = nullptr);
    char *append(char *p = nullptr);
    int get_length(int m_len);

  private:
    char *m_pbuf;
    int m_len; // todo: convert int to unsigned int32_t
};

MyString::~MyString()
{
}

char *MyString::set_string(char *p)
{
    delete[] m_pbuf;
    m_len = strlen(p);

    if (p == nullptr)
    {
        m_pbuf = new char('\0');
    }
    else
    {
        m_pbuf = new char[m_len + 1];
        strncpy(m_pbuf, p, m_len + 1);
    }
    return m_pbuf;
}

char *MyString::append(char *p)
{
    if (p != nullptr)
    {
        char *tmp = new char[m_len + strlen(p) + 1];
        sprintf(tmp, "%s%s", m_pbuf, p);
        delete[] m_pbuf;
        m_pbuf = tmp;
    }
    return m_pbuf;
}