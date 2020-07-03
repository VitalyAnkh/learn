cmake_minimum_required(VERSION 3.16)
project(cpp_primer)

set(CMAKE_CXX_STANDARD 17)

include_directories(.)
include_directories(ch2)
include_directories(ch5)
include_directories(ch6)
include_directories(ch6/separate_compilatioin)
include_directories(GCC_pre_C11/1)
include_directories(GCC_pre_C11/12)
include_directories(GCC_pre_C11/13)
include_directories(GCC_pre_C11/14)
include_directories(GCC_pre_C11/15)
include_directories(GCC_pre_C11/16)
include_directories(GCC_pre_C11/17)
include_directories(GCC_pre_C11/18)
include_directories(GCC_pre_C11/19)
include_directories(GCC_pre_C11/2)
include_directories(GCC_pre_C11/6)
include_directories(GCC_pre_C11/7)
include_directories(GCC_pre_C11/8)
include_directories(GCC_pre_C11/9)
include_directories(play)
include_directories(SalesItem)

#add_executable(cpp_primer
#        ch2/ex_2_17.cpp
#        ch5/ex_5_23_add_and_add_using_exception.cpp
#        ch5/ex_5_23_add_and_divide_tuned.cpp
#        ch5/ex_5_23_read_and_divide.cpp
#        ch5/ex_5_23_read_and_divide_with_try_catch.cpp
#        ch5/SalesItem.h
#        ch6/separate_compilatioin/fact.cc
#        ch6/separate_compilatioin/fact.h
#        ch6/separate_compilatioin/fact_main.cc
#        ch6/ex_6_1_1_exchange_value_using_pointer.cpp
#        ch6/ex_6_3_fact.cpp
#        ch6/ex_6_7_call_and_add.cpp
#        ch6/find_char.cpp
#        play/input_n_m_dimension_vector.cpp
#        SalesItem/addItems.cpp
#        SalesItem/ch2_book_store.cpp
#        SalesItem/ex-1-20-read_and_print.cpp
#        SalesItem/ex_1_20_read_and_print_2.cpp
#        SalesItem/ex_1_21_read_and_add.cpp
#        SalesItem/ex_1_22_read_and_add_multiple.cpp
#        SalesItem/ex_1_23_read_and_count.cpp
#        SalesItem/Sales_item.h
#        SalesItem/SalesItem.h
#        CMakeLists.txt
#        template_function.cpp)
add_executable(addItems SalesItem/addItems.cpp)
add_executable(read_and_print SalesItem/ex_1_20_read_and_print_2.cpp)
add_executable(read_and_add SalesItem/ex_1_21_read_and_add.cpp)
add_executable(read_and_count SalesItem/ex_1_23_read_and_count.cpp)
add_executable(compare_string_size ch6/compare_string_size.cpp)

