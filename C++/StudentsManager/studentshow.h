#pragma once
#include"linker.h"

void show_one_student(Student *p);  /*�������ܣ���ʾĳλѧ������Ϣ*/

void getPage(int page,enum studentcategory category);  /*�������ܣ���ʾ��ǰҳ��ѧ����Ϣ*/

void getPageByClasses(enum studentcategory category,char *specialty,char *classes,int page);  /*�������ܣ���ʾָ���༶��ǰҳ��ѧ����Ϣ*/

void getPageFailByClassCourse(char *specialty,char *classes,int course,int page);   /*�������ܣ���ʾĳ�ſ�Ŀĳ�༶�������ѧ����Ϣ*/