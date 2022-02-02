#ifndef VEC_H
#define VEC_H

typedef int Rank;

// Initial capacity of Vec
#define DEFAULT_CAPACITY 5

template <typename T> class Vec{
protected:
    // size
    Rank _size;
    // capacity
    int _capacity;
    // data pointer
    T* _elem;

};

#endif
