#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include"linker.h"
#include"studentshow.h"
#include"studentManage.h"

extern Student *head;
extern int maxId;

void addStudent()  /*���ѧ��������Ϣ*/
{
	char name[80],sex[80];
    Student *p=NULL;
	int i,n,category;
	printf("��������Ҫ�����Ϣ��ѧ��������");
	scanf("%d",&n);
	for(i=1;i<=n;i++){
		fflush(stdin);   /*��ռ��̻�����*/
		printf("�������%dλѧ����Ϣ��\n",i);
		if((p=(Student *)malloc(sizeof(Student)))==NULL){
		     printf("���ܳɹ�����洢��\n");
			 exit(0);
		}
		p->next=NULL;
		do{
		     printf("������ѧ��������");
			 gets(name);
			 if(strlen(name)>=10){
			     printf("�����������ֳ��Ȳ��ܳ���ʮλ������������...\n");
			 }
			 else break;
		}while(1);
		strcpy(p->name,name);
		fflush(stdin);
		do{
		    printf("������ѧ�����Ա��л�Ů����");
			scanf("%s",sex);
			if(strcmp(sex,"��")!=0&&strcmp(sex,"Ů")!=0){
			     printf("��������ֻ������ �� ���� Ů������������...\n");
			}
			else break;
		}while(1);   
		strcpy(p->sex,sex);
		fflush(stdin);
		printf("������ѧ��רҵ���ƣ�");
		gets(p->specialty);
		printf("��������");
		gets(p->classes);
		printf("������ѧ�����ͣ�������-0���о���-1����");
		do{
		     scanf("%d",&category);
			 if(category!=1&&category!=0){
			      printf("��������ֻ������0��1������������...");
			 }
			 else break;
		}while(1);
		p->category=(enum studentcategory)category;
		p->math=-1;
		p->english=-1;
		p->clanguage=-1;
		p->comprehensive=-1;
		p->thesis=-1;
		p->totalscore=-1;
		p->classrank=-1;
		p->schoolrank=-1;
		maxId++;
		p->id=maxId;
		addNode(&head,p);
		system("cls");
	}
	printf("��������ɹ����밴���������...");
	getchar();
	getchar();
	system("cls");
}

void modifyStudent()   /*����ѧ���޸�ѧ��������Ϣ�ͳɼ���Ϣ*/
{
   Student *p=head;
   int id,choose,category;
   printf("��������Ҫ�޸���Ϣ��ѧ��ѧ�ţ�");
   scanf("%d",&id);
   while(p!=NULL){      /*Ѱ�ҷ��ϸ���Ϣ��ѧ��*/
      if(p->id==id)break;
	  p=p->next;
   }
   if(p==NULL){
      printf("û���ҵ�������Ϣ...\n");
   }
   else {
      printf("���ҵ�������Ϣ\n");
	  while(1){
         show_one_student(p);    /*��ʾ����������Ϣ*/
	     printf(" [ 0 ] �˳�\n");
	     printf("�����������޸���(1-8)��");
		 scanf("%d",&choose);
		 if(choose==0)break;
		 else {
			 switch(choose){
			     case 1:printf("���������������");getchar();gets(p->name);break;
				 case 2:printf("����������Ա�");getchar();gets(p->sex);break;
				 case 3:printf("���������רҵ���ƣ�");getchar();gets(p->specialty);break;
				 case 4:printf("������༶��Ϣ��");getchar();gets(p->classes);break;
				 case 5:printf("������ѧ�����ͣ�������-0���о���-1����");scanf("%d",&category);p->category=(enum studentcategory)category;break;
				 case 6:case 7:case 8:printf("��������ȷ�ĳɼ���Ϣ��");
					 if(p->category==UNDERGRADUATE){
						 if(choose==6)scanf("%d",&p->math);
						 if(choose==7)scanf("%d",&p->english);
						 if(choose==8)scanf("%d",&p->clanguage);
						 if(p->math!=-1&&p->english!=-1&&p->clanguage!=-1)p->totalscore=p->math+p->english+p->clanguage;
					 }
					 else {
					     if(choose==6)scanf("%d",&p->comprehensive);
						 if(choose==7)scanf("%d",&p->thesis);
						 if(p->comprehensive!=-1&&p->thesis!=-1)p->totalscore=p->comprehensive+p->thesis;
					 }
			 }
		 }
		 system("cls");
	  }
	  printf("�޸ĳɹ����밴���������...\n");
	  getchar();
	  system("cls");   /*����*/
   }
}

void deleteStudent()  /*ɾ��ѧ����Ϣ*/
{
    int id,result;
	printf("��������Ҫɾ��ѧ����Ϣ��ѧ��id:");
	scanf("%d",&id);
	result=deleteStudentById(&head,id);
	if(result==0){
	   printf("����ɾ����¼...\n");
	}
	else printf("ɾ���ɹ�,�밴���������...\n");
	getchar();
	getchar();
	system("cls");
}

void undergraduateScore()   /*�������뱾��ѧ���ɼ���Ϣ*/
{
	Student *p=head;
	int choose,flag=0;
    char specialty[80],classes[80];
	getchar();
	printf("����Ҫ����ɼ���Ϣ��רҵ���ƣ�");
	gets(specialty);
	printf("����������Ϣ��");
	gets(classes);
	printf("����������Ҫ����ĳɼ���Ŀ������-1��Ӣ��-2��C����-3����");
	scanf("%d",&choose);
	if(p==NULL){
	    printf("û��ѧ����Ϣ���밴���������...\n");
		getchar();
		system("cls");
	}
	while(p!=NULL){
		if(strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&p->category==UNDERGRADUATE){
		   flag=1;
		   printf("ѧ��ѧ�ţ�%d\n",p->id);
		   printf("ѧ��������%s\n",p->name);
		   if(choose==1){
		       printf("����������ĸ����ɼ���");
			   scanf("%d",&p->math);
		   }
		   else if(choose==2){
		   	   printf("�����������Ӣ��ɼ���");
			   scanf("%d",&p->english);
		   }
		   else if(choose==3){
		   	   printf("�����������C���Գɼ���");
			   scanf("%d",&p->clanguage);
		   }
		   else printf("���������밴���������...\n");
		}
		if(p->math!=-1&&p->english!=-1&&p->clanguage!=-1)
			p->totalscore=p->math+p->english+p->clanguage;
		p=p->next;
	}
	if(flag==0){
	       printf("���޸���ѧ����Ϣ���밴���������...\n");
		   getchar();
		   system("cls");
	}
	else printf("����ɹ����밴���������...\n");
	getchar();
	getchar();
	system("cls");
}

void postgraduateScore()  /*���������о����ɼ���Ϣ*/
{
	Student *p=head;
	int choose,flag=0;
    char specialty[80],classes[80];
	getchar();
	printf("����Ҫ����ɼ���Ϣ��רҵ���ƣ�");
	gets(specialty);
	printf("����������Ϣ��");
	gets(classes);
	printf("����������Ҫ����ĳɼ���Ŀ���γ���Ƴɼ�-1�����ĳɼ�-2����");
	scanf("%d",&choose);
	if(p==NULL){
	    printf("û��ѧ����Ϣ���밴���������...\n");
		getchar();
		system("cls");
	}
	while(p!=NULL){
		if(strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&p->category==POSTGRADUATE){
		   flag=1;
		   printf("ѧ��ѧ�ţ�%d\n",p->id);
		   printf("ѧ��������%s\n",p->name);
		   if(choose==1){
		       printf("����������Ŀγ���Ƴɼ���");
			   scanf("%d",&p->comprehensive);
		   }
		   else if(choose==2){
		   	   printf("��������������ĳɼ���");
			   scanf("%d",&p->thesis);
		   }
		   else printf("����Ŀ�Ŀ��Ϣ�����밴���������...\n");
		}
		if(p->comprehensive!=-1&&p->thesis!=-1)
			p->totalscore=p->comprehensive+p->thesis;
		p=p->next;
	}
	if(flag==0){
	       printf("���޸���ѧ����Ϣ���밴���������...\n");
		   getchar();
		   getchar();
		   system("cls");
	}
	else printf("����ɹ����밴���������...\n");
	getchar();
	getchar();
	system("cls");
}


