#pragma once

void showAllByCategory(enum studentcategory category);    /*�������ܣ���ʾȫ�������������о�����ѧ����Ϣ*/

void showByClass(enum studentcategory category,char *specialty,char *classes);   /*�������ܣ���ʾ����ѧ���ĸ�����Ϣ*/

void showById(int id);    /*�������ܣ�����id��ʾ������Ϣ*/

void showByName(char *name);    /*�������ܣ�����������ʾ������Ϣ*/

void showFailByClassCourse(char *specialty,char *classes,int course); /*�������ܣ���ʾĳ�༶ĳ�ſ�Ŀ�����������*/