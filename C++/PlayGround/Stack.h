//
// Created by vitalyr on 19-6-2.
//

#ifndef PLAYGROUND_STACK_H
#define PLAYGROUND_STACK_H

template<typename T>
class Stack {
private:
    enum {
        MAX = 10
    };
    T items[MAX];
    int top;
public:

    Stack();

    bool is_empty();

    bool is_full();

    bool push(const T &item);

    bool pop(T &item);


};

template<typename T>
Stack<T>::Stack() {
    top = 0;
}

template<typename T>
bool Stack<T>::is_empty() {
    return top == 0;
}

template<typename T>
bool Stack<T>::is_full() {
    return top == MAX;
}

template<typename T>
bool Stack<T>::pop(T &item) {
    if (top > 0) {
        item = items[--top];
        return true;
    } else
        return false;
}

template<typename T>
bool Stack<T>::push(const T &item) {
    if (top < MAX) {
        items[top++] = item;
        return true;

    } else
        return false;
}

#endif //PLAYGROUND_STACK_H
