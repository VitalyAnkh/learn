#include <stdio.h>
#include <stdlib.h>
#include "linker.h"

extern const char fileFullPath[40];
extern Student* head;
extern int maxId;

//�������ܣ����ļ��ж�ȡѧ�����ݵ�����
int readFromFile()
{
	FILE *fp;
	int nodeNumber = 0;

	if((fp = fopen(fileFullPath, "rb")) == NULL){//����ʽ�򿪶������ļ�����������ݣ��ļ�������ڡ�
		printf("�޷��������ļ�! \n");
		return -1;
	}
	
	printf("���ڴ��ļ��ж�ȡѧ�����ݵ��������Ժ�...... \n");
	do{
		Student * newStudent = (Student *)malloc(sizeof(Student));		
		if(fread(newStudent, sizeof(Student), 1, fp) == 1) {//��ȡ���ݳɹ���
			newStudent->next = NULL;	//�½����Ϊβ������
			if(maxId < newStudent->id) maxId = newStudent->id;

			//���½����ӵ�����β��
			addNode(&head, newStudent);//ע�⣺��ε���addNode��ʽ������Ч�ʸߣ�����Ч�ʵͣ�ÿ��Ҫ��ǰ�����������������ҿ����Լ�дЧ�ʸ��ߵĴ��룺ָ������ָ������β��㣬���ļ��ж�һ����㣬�Ͳ�������β����
			nodeNumber++;		       //��ȡ�������1
		}else{
			if(feof(fp)){//��ȡ�������
				fclose(fp);
				printf("��ȡ����������ȡ��%d��ѧ������! \n", nodeNumber);
				system("pause");
				system("cls");
				return 1;
			}
		}
	}while(1);
	fclose(fp);
}

//�������ܣ���ѧ������������д�뵽�ļ����������ݳ��ñ���
void saveToFile() 
{
	FILE *fp;
	int nodeNumber = 0;
	Student *p = head;

	if((fp = fopen(fileFullPath, "wb+")) == NULL){//w+ �򿪿ɶ�д�ļ������ļ��������ļ�������Ϊ�㣬�����ļ����ݻ���ʧ�����ļ��������������ļ���
		printf("�޷��������ļ�! \n");
		return ;
	}

	printf("���ڽ������е����ݱ��浽�ļ������Ժ�...... \n");
	while(p!=NULL){
		if(fwrite(p, sizeof(Student), 1, fp) == 1)
			nodeNumber++;
		else
			printf("ѧ��Ϊ��%d������Ϊ��%s ��ѧ�����ݱ����ļ�ʧ�� \n",p->id,p->name);		
		p = p->next;
	}

	fclose(fp);
	printf("�����������������%d��ѧ������! \n", nodeNumber);
}