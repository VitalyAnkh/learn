#pragma once

//ö����ѧ����𣺱��������о���
enum studentcategory { UNDERGRADUATE,POSTGRADUATE };

//ѧ������
typedef struct node {
	int  id;						//ѧ��
	char name[80];					//����
	char sex[80];					//�Ա��л�Ů
	char specialty[80];				//רҵ
	char classes[80];				//�༶ 
	enum studentcategory category;	//ö����ѧ����𣻱��������о���
	int  math;						//����
	int  english;					//Ӣ��
	int  clanguage;					//C����
	int  comprehensive;				//�γ��ۺ�
	int  thesis;					//��ҵ����
	int  totalscore;				//�ܳɼ�
	int  classrank;					//�༶����
	int  schoolrank;				//У������
	struct node * next;				
} Student;

//�������ܣ����һ����㣨newStudentָ��Ľ�㣩������ĩβ��
//����˵����headp������ָ�루ָ������ͷָ���ָ�룩, newStudent���½��
void addNode(Student ** headp, Student * newStudent);

//�������ܣ�����ѧ��id��ɾ��һ����㡣
//����˵����headp������ָ�루ָ������ͷָ���ָ�룩, id��ѧ��
//����ֵ������0����ʾû��ѧ��Ϊid��ѧ��������1����ʾ�ɹ�ɾ����
int deleteStudentById(Student ** headp, int id);

//�������ܣ�����p��q��ָ����������ֵ����������p��q��
//����˵����p��ָ���������ָ��,q��ָ���������ָ��
void exchangeData(Student * p, Student * q);