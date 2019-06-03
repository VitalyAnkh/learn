#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "linker.h"			//�������������ԭ������
#include "fileOperate.h"	//�ļ�����������ԭ������
#include "tools.h"			//�������ߣ�����ԭ������
#include "studentManage.h"	//ѧ����������ԭ������
#include "sortAllyById.h"   //��������
#include "studentshow.h"    //��ʾ����
#include "searchMenu.h"	//��ѯ��������ԭ������
#include "sort.h"			//�����������ԭ������
#include "statistic.h"		//ͳ�ƹ�������ԭ������   

int maxId=0;									//��ǰ���ѧ��ѧ��
int change = 1, peopleNumber;					//�޸ı�־��ѧ��������
int minTotalscore,maxTotalscore,avgTotalscore;	//����ܷ֡�����ܷ֡�ƽ���ܷ�
const char fileFullPath[40] = "student.dat";	//ѧ�������ļ�
Student * head = NULL;							//ѧ������ͷָ��

//�����˵��� 
//1.ѧ��������ɾ�ģ��˵�
void StudentManagerMenu();
//2.��ѯ����˵�
void searchMenu();
//3.�������˵�
void sortMenu();
//4.ͳ�ƹ���˵�
void statisticMenu();

void main(void)
{
	int menuItem;
	FILE *fp;

	if((fp = fopen(fileFullPath, "rb")) == NULL){  //�����ļ�,���Գ�������
		printf("�޷��������ļ�! \n");
		exit(0);
	}
	fclose(fp);
	if (readFromFile()==-1){	//�������ã����ļ��ж�ȡ���ݵ�����
		return;
	}	

	//���˵���һ���˵�
	while(1)
	{
		do
		{
			fflush(stdin);//��ռ��̻�����
			printf("\n                 ���˵�\n");
			printf("===========================================\n");
			printf("|   1��ѧ������             2����ѯ����   |\n");
			printf("|   3���������             4��ͳ�ƹ���   |\n");
			printf("|                 5���˳�                 |\n");
			printf("===========================================\n");
			printf("          ������˵���ţ�1-5����");
			scanf("%d",&menuItem);
			if(menuItem<1||menuItem>5)printf("�˵�����������������˵���ţ�1-5����\n\n");
			else break;
		}while(1);

		switch(menuItem){
		    case 1: StudentManagerMenu();    /*ѧ������˵�*/
					break;
			case 2: searchMenu();
					break; 
			case 3: sortMenu();
					break;
			case 4: statisticMenu();
					break;   
			case 5: sortAllById();		//�������ã�������ѧ��id��С��������
					saveToFile();		//�������ã�����������ļ�    
			default:break;
		}
		if(menuItem==5){
		    printf("========================================\n");
			printf("   �����˳�ѧ������ϵͳ����ӭ�ٴ�ʹ�ã� \n");
			printf("========================================\n");
			break;
		}
	}
}

//�����˵���1.ѧ��������ɾ�ģ��˵�
void StudentManagerMenu()
{
	int menuItem;
	enum studentcategory category;	

	while(1)
	{
		do
		{
			fflush(stdin);//��ռ��̻�����
			printf("\n             �����˵���ѧ������\n");
			printf("============================================\n");
			printf("|   1�����ѧ��������Ϣ                    |\n");
			printf("|   2������ѧ���޸�ѧ��������Ϣ            |\n");
			printf("|   3������ѧ���޸�ѧ���ɼ���Ϣ            |\n");
			printf("|   4������ѧ��ɾ��ѧ��                    |\n");
			printf("|   5���������뱾�����ɼ��������ܳɼ�      |\n");
			printf("|   6�����������о����ɼ��������ܳɼ�      |\n");
			printf("|   7���������ɼ�����                      |\n");
			printf("|   8���о����ɼ�����                      |\n");
			printf("|   9���˻��ϼ��˵�                        |\n");
			printf("============================================\n");
			printf("          ������˵���ţ�1-9����");
			scanf("%d", &menuItem);
			if(menuItem<1||menuItem>9)printf("�˵�����������������˵���ţ�1-9��!\n\n");
			else break;
		}while(1);

		switch(menuItem){
			case 1: addStudent(); break;     /*���ѧ����Ϣ*/
			case 2:case 3: modifyStudent(); break;  /*�޸�ѧ����Ϣ*/
			case 4: deleteStudent();  break;        /*ɾ��ѧ����Ϣ*/
			case 5: undergraduateScore(); break;    /*�������뱾�����ɼ�*/
			case 6: postgraduateScore(); break;     /*���������о����ɼ�*/
			case 7:
			case 8:
					if(menuItem==7) category=UNDERGRADUATE;    /*�Ա����������о�������У������*/
					else category=POSTGRADUATE;
					sortAllByCategory(category);//����
		            sortAllById();    //��ԭ����
					break;    
			case 9: system("cls");return;
		}
	}
}

//�����˵���2.��ѯ����˵�
void searchMenu()
{
	int menuItem;
	char classes[80],specialty[80],category1;
	int id;
	char name[80];
	int course;			//�γ̣�1��������2��Ӣ�3��C���ԣ�4���γ��ۺϣ�5������
	enum studentcategory category,category2;	

	while(1) 
	{
		do
		{
			fflush(stdin);//��ռ��̻�����
			printf("\n             �����˵�����ѯ����\n");
			printf("======================================================\n");
			printf("|  1����ѯȫ��������     2����ѯȫ���о���           |\n");
			printf("|  3�����༶��ѯ         4����ѧ�Ų�ѯ               |\n");
			printf("|  5����������ѯ         6����ѯĳ�༶��ĳ�γ̲����� |\n");
			printf("|  7���˻��ϼ��˵�                                   |\n");
			printf("======================================================\n");
			printf("          ������˵���ţ�1-7����");
			scanf("%d", &menuItem);
			if(menuItem<1||menuItem>7)printf("�˵�����������������˵���ţ�1-7��!\n\n");
			else break;
		}while(1);
		
		switch(menuItem){
			case 1:
			case 2:
					if(menuItem==1) category=UNDERGRADUATE;
					else category=POSTGRADUATE;
					//���ú�������ʾ
					showAllByCategory(category);//��ʾ
					break;
			case 3: //1.�������ѯ�İ༶
					do{
						fflush(stdin);//��ռ��̻�����
						printf("������ʾ���༶��רҵ��ѧ�����Ͳ���Ϊ��!\n");
						printf("������ѧ�����ͣ�������-0���о���-1����");
						scanf("%d",&category1);
						if(category1==0||category==1)
							category2=(enum studentcategory)category1;
						getchar();
						printf("������רҵ���ƣ�");
						scanf("%s",specialty);
						printf("������Ҫ��ѯ�İ༶��");
						scanf("%s",classes);
						if(strlen(classes)<=0)printf("�༶����Ϊ�գ�\n");
						else if(strlen(specialty)<=0)printf("רҵ���Ʋ���Ϊ��!\n");
						else if(category1!=0&&category!=1)printf("ѧ��������������\n");
						else break;
					}while(1);
					//2.�������ã����༶��ѯ
					showByClass(category2,specialty,classes); 
					break;
			case 4: //1.�������ѯ��ѧ��id
					do{
						fflush(stdin);//��ռ��̻�����
						printf("������ʾ��ѧ�Ų���Ϊ��!\n");
						printf("������Ҫ��ѯ��ѧ�ţ�");
						scanf("%d",&id);
						if(id<=0)printf("ѧ��id����Ϊ������\n");
						else break;
					}while(1);

					//2.�������ã���ѧ��id��ѯ
					showById(id);
					break;
			case 5: //1.�������ѯ������
					do{
						fflush(stdin);//��ռ��̻�����
						printf("������ʾ����������Ϊ��!\n");
						printf("������Ҫ��ѯ��������");
						scanf("%s",name);
						if(strlen(name)<=0)printf("��������Ϊ�գ�\n");
						else break;
					}while(1);

					//2.�������ã�������name��ѯ
					showByName(name); 
					break;
			case 6: //1.�������ѯ�İ༶�Ϳγ�
					do{
						fflush(stdin);//��ռ��̻�����
						printf("������ʾ���༶����Ϊ��!\n");
						printf("�γ̣�1��������2��Ӣ�3��C���ԣ�4���γ��ۺϣ�5������\n");
						printf("����������Ҫ��ѯ�Ŀγ̣�");
						scanf("%d",&course);
						printf("������רҵ���ƣ�");
						scanf("%s",specialty);
						printf("������Ҫ��ѯ�İ༶��");
						scanf("%s",classes);
						if(strlen(classes)<=0)
							printf("�༶����Ϊ�գ�\n");
						else if(course<1 &&course>5)
							printf("�γ̱��ֻ��1-5��\n");
						else break;
					}while(1);
						
					//2.�������ã���ѯĳ�༶��ĳ�γ̲�����ѧ��
					showFailByClassCourse(specialty,classes,course);
					break;  
			case 7: system("cls");return;     
		}
	}
}

//�����˵���3.�������˵�
void sortMenu()
{
	int menuItem,category1;
	char classes[80],specialty[80];
	enum studentcategory category;

	while(1) 
	{
		do
		{
			fflush(stdin);//��ռ��̻�����
			printf("\n             �����˵����������\n");
			printf("            �����ܳɼ��Ӹߵ��ͣ�\n");
			printf("==============================================\n");
			printf("|  1������ȫ��������      2������ȫ���о���  |\n");
			printf("|  3������ĳ�༶ѧ��      4���˻��ϼ��˵�    |\n");
			printf("==============================================\n");
			printf("          ������˵���ţ�1-4����");
			scanf("%d", &menuItem);
			if(menuItem<1||menuItem>4)printf("�˵�����������������˵���ţ�1-4��!\n\n");
			else break;
		}while(1);

		switch(menuItem){
			case 1:
			case 2:
					if(menuItem==1) category=UNDERGRADUATE;
					else category=POSTGRADUATE;
					//���ú�����������ʾ
					sortAllByCategory(category);//����
					showAllByCategory(category);//��ʾ
					sortAllById();  //��ԭ����
					break;
			case 3:
					//1.���������İ༶
					do{
						fflush(stdin);//��ռ��̻�����
						printf("������ʾ���༶��רҵ��ѧ�����Ͳ���Ϊ��!\n");
						printf("������רҵ���ƣ�");
						scanf("%s",specialty);
						printf("������Ҫ����İ༶��");
						scanf("%s",classes);
						printf("������ѧ������(������-0���о���-1)��");
						scanf("%d",&category1);
						if(category1==1||category1==0)
							category=(enum studentcategory)category1;
						if(strlen(classes)<=0)printf("�༶����Ϊ�գ�\n");
						else if(category1!=1&&category1!=0)printf("ѧ�������������\n");
						else break;
					}while(1);

					//2.���ú�����������ʾ
 					sortAllByClass(category,specialty,classes);//����
					showByClass(category,specialty,classes);	//��ʾ
					sortAllById();    //��ԭ����
					break;
			case 4:	system("cls");return;   
		}
	}
}

//�����˵���4.ͳ�ƹ���˵�
void statisticMenu()
{
	int menuItem;

	while(1) 
	{
		do
		{
			fflush(stdin);//��ռ��̻�����
			printf("\n                �����˵���ͳ�ƹ���\n");
			printf("=========================================================\n");
			printf("|  1��ͳ��ĳ�༶ĳ�γ̵�ƽ���ɼ�����߳ɼ�����ͳɼ�    |\n");
			printf("|  2��ͳ��ĳ�༶ĳ�γ̳����γ�ƽ���ɼ���ѧ������������  |\n");
			printf("|  3��ͳ��ĳ�༶ĳ�γ̲������ѧ������������            |\n");
			printf("|  4��ͳ��ĳ�༶ĳ�γ̲�ͬ�ȼ���ѧ������                |\n");
			printf("|  5���˻��ϼ��˵�                                      |\n");
			printf("=========================================================\n");
			printf("             ������˵���ţ�1-4����");
			scanf("%d", &menuItem);
			if(menuItem<1||menuItem>5)printf("�˵�����������������˵���ţ�1-5��!\n\n");
			else break;
		}while(1);

		switch(menuItem){
			case 1:statistic1(); break;
			case 2:statistic2(); break;
			case 3:statistic3(); break;
			case 4:statistic4(); break;  
			case 5:system("cls");return;  
		}
	}
}