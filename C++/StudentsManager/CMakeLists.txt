cmake_minimum_required(VERSION 3.14)
project(StudentsManager)

set(CMAKE_CXX_STANDARD 17)

add_executable(StudentsManager MyString.cpp MyString.h fileOperate.c fileOperate.h linker.h linker.c searchMenu.c searchMenu.h sort.c sort.h sortAllyById.c sortAllyById.h statistic.c statistic.h
        student.dat studentManage.c studentManage.h studentshow.c studentshow.h tools.h)