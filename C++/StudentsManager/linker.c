#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "linker.h"
#include "studentshow.h"

#define N 4

extern int maxId;

//�������ܣ����һ����㣨newStudentָ��Ľ�㣩������ĩβ��
//����˵����headp������ָ�루ָ������ͷָ���ָ�룩, newStudent���½��
void addNode(Student ** headp, Student * newStudent)
{
	Student *p = *headp;

	if(*headp == NULL) {//������
		*headp = newStudent;
	}else{//�ǿ��������ҵ�β��㣬�ٲ����½��
		p = *headp;
		//�ҵ�β���
		while(p->next != NULL) p = p->next;
		
		//�����½��
		p->next = newStudent;
	}
}

//�������ܣ�����ѧ��id��ɾ��һ����㡣
//����˵����headp������ָ�루ָ������ͷָ���ָ�룩, id��ѧ��
//����ֵ������0����ʾû��ѧ��Ϊid��ѧ��������1����ʾ�ɹ�ɾ����
int deleteStudentById(Student ** headp, int id)
{
	char ch;
	//ע�⣺headp��ָ������ͷָ���ָ�룬*headp���������ͷָ��
	if(*headp == NULL)//������
		return 0;
	else if((*headp)->id == id){
		show_one_student(*headp);
		printf("�Ѿ��ҵ�������Ϣ���Ƿ�ɾ����Y or N��:");
		scanf(" %c",&ch);
		if(ch=='Y'||ch=='y'){//��ɾ���ڵ���ͷ�ڵ㣺ֱ��ɾ��
		Student * p = *headp;		//pָ��ͷ���
		*headp = (*headp)->next;	//ɾ��
		free(p);					//�ͷű�ɾ����㣨ͷ��㣩�Ŀռ�
		return 1;
		}
		else return 0;
	}
	else{
		//��ɾ���ڵ��ͷ�ڵ㣺�Ȳ��ң���ɾ����
		//����ָ�������pָ��ɾ��㣬qָ��ɾ����ǰһ����㡣
		//1.����p��q�ĳ�ֵ
		Student * q = *headp, *p = (*headp)->next;
		//2.���ұ�ɾ���
		while (p != NULL && p->id != id ){
			q = p;
			p = p->next;
		}
		//3.���ݲ��ҽ��������Ӧ����
		if(p == NULL)	//û���ҵ�idֵ��Ա��
			return 0;	//����0
		else{
			//�ҵ���ɾ����㣺ɾ��p��㣬����1
			show_one_student(p);
			printf("�Ѿ��ҵ�������Ϣ���Ƿ�ɾ����Y or N��:");
			scanf(" %c",&ch);
			if(ch=='N'||ch=='n'){
			   return 0;
			}
			else {q->next = p->next;
			   free(p);
			   return 1;
			}
		}
	}
}

//�������ܣ�����p��q��ָ����������ֵ����������p��q��
//����˵����p��ָ���������ָ��,q��ָ���������ָ��
void exchangeData(Student * p, Student * q)
{
	Student temp,*pNext,*qNext;

	//��¼����֮ǰ����ָ����
	pNext = p->next;
	qNext = q->next;

	//����������������ָ����
	temp = *p;
	*p = *q;
	*q = temp;

	//�ָ�ָ���򣨲��ı�������˳��
	p->next = pNext;
	q->next = qNext;
}