#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include"linker.h"
#include"searchMenu.h"

extern Student *head;

void statistic1()
{
    Student *p=head;
	int max=0,min=200,category1,subject,count=0,sum=0;
	double average;
	char specialty[80],classes[80];
	enum studentcategory category;

	do{
		printf("������ѧ������(������-0���о���-1)��");
	    scanf("%d",&category1);
		if(category1!=1&&category1!=0)
			printf("������������������");
		else break;
	}while(1);
	category=(enum studentcategory)category1;
	printf("������רҵ���ƣ�");
	scanf("%s",specialty);
	printf("������༶��Ϣ��");
	scanf("%s",classes);
	if(category==UNDERGRADUATE){
		do{
			printf("��ѡ���ѯ��Ŀ������-1��Ӣ��-2��C����-3����");
		    scanf("%d",&subject);
			if(subject!=1&&subject!=2&&subject!=3)
				printf("������������������...\n");
			else break;
		}while(1);
	}
	else {
		do{
			printf("��ѡ���ѯ��Ŀ���γ����-4�����ĳɼ�-5����");
		    scanf("%d",&subject);
			if(subject!=4&&subject!=5)
				printf("������������������...\n");
			else break;
		}while(1);
	}

	while(p!=NULL){
	      if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0)
			  break;
		  p=p->next;
	}
	if(p==NULL){
	    printf("û���ҵ�����ѧ���Ļ�����Ϣ���밴���������...\n");
		getchar();
		system("cls");
		return;
	}
	else {
		while(p!=NULL){
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==1&&p->math!=-1){
				 if(p->math>max)
					 max=p->math;
				 if(p->math<min)
					 min=p->math;
			     count++;
				 sum+=p->math;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==2&&p->english!=-1){
				 if(p->english>max)
					 max=p->english;
				 if(p->english<min)
					 min=p->english;
			     count++;
				 sum+=p->english;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==3&&p->clanguage!=-1){
				 if(p->clanguage>max)
					 max=p->clanguage;
				 if(p->clanguage<min)
					 min=p->clanguage;
			     count++;
				 sum+=p->clanguage;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==4&&p->comprehensive!=-1){
				if(p->comprehensive>max)
					 max=p->comprehensive;
				 if(p->comprehensive<min)
					 min=p->comprehensive;
			     count++;
				 sum+=p->comprehensive;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==5&&p->thesis!=-1){
				if(p->thesis>max)
					 max=p->thesis;
				 if(p->thesis<min)
					 min=p->thesis;
			     count++;
				 sum+=p->thesis;
			}
			p=p->next;
		}
	}
	average=sum/count*1.0;
	printf("��ѯ�ɹ���\n");
	printf("�ð༶���ſ�Ŀ��ƽ����Ϊ%.3lf,��߷�Ϊ%d,��ͷ�Ϊ%d\n",average,max,min);
	printf("�밴���������...\n");
	getchar();
	getchar();
	system("cls");
}

void statistic2()
{
	Student *p=head,*p1=NULL;
	int category1,subject,count=0,sum=0,count1=0;
	double average;
	char specialty[80],classes[80];
	enum studentcategory category;

	do{
		printf("������ѧ������(������-0���о���-1)��");
	    scanf("%d",&category1);
		if(category1!=1&&category1!=0)
			printf("������������������");
		else break;
	}while(1);
	category=(enum studentcategory)category1;
	printf("������רҵ���ƣ�");
	scanf("%s",specialty);
	printf("������༶��Ϣ��");
	scanf("%s",classes);
	if(category==UNDERGRADUATE){
		do{
			printf("��ѡ���ѯ��Ŀ������-1��Ӣ��-2��C����-3����");
		    scanf("%d",&subject);
			if(subject!=1&&subject!=2&&subject!=3)
				printf("������������������...\n");
			else break;
		}while(1);
	}
	else {
		do{
			printf("��ѡ���ѯ��Ŀ���γ����-4�����ĳɼ�-5����");
		    scanf("%d",&subject);
			if(subject!=4&&subject!=5)
				printf("������������������...\n");
			else break;
		}while(1);
	}

	while(p!=NULL){
	      if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0)
			  break;
		  p=p->next;
	}
	if(p==NULL){
	    printf("û���ҵ�����ѧ���Ļ�����Ϣ���밴���������...\n");
		getchar();
		system("cls");
		return;
	}
	else {
		p1=p;
		while(p!=NULL){
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==1&&p->math!=-1){
			     count++;
				 sum+=p->math;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==2&&p->english!=-1){
			     count++;
				 sum+=p->english;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==3&&p->clanguage!=-1){
			     count++;
				 sum+=p->clanguage;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==4&&p->comprehensive!=-1){
			     count++;
				 sum+=p->comprehensive;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==5&&p->thesis!=-1){
			     count++;
				 sum+=p->thesis;
			}
			p=p->next;
		}
	}
		average=sum/count*1.0;
		if(category==UNDERGRADUATE)
	         printf("ѧ��  ����  �Ա�     רҵ     �༶  ѧ������  �����ɼ�  Ӣ��ɼ�  C���Գɼ�  �ܳɼ�  �༶����  У������\n");
        else printf("ѧ��  ����  �Ա�     רҵ     �༶  ѧ������  �γ���Ƴɼ�  ���ĳɼ�  �ܳɼ�  �༶����  У������\n");
		p=p1;
		while(p!=NULL){
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==1&&p->math!=-1){
				if(p->math>=average){
				     count1++;
					 printf("%2d%8s%5s%13s%4s     ������  %6d%10d%10d%10d%10d%10d\n",p->id,p->name,p->sex,p->specialty,p->classes,p->math,p->english,p->clanguage,p->totalscore,p->classrank,p->schoolrank);
				}
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==2&&p->english!=-1){
				if(p->english>=average){
				     count1++;
					 printf("%2d%8s%5s%13s%4s     ������  %6d%10d%10d%10d%10d%10d\n",p->id,p->name,p->sex,p->specialty,p->classes,p->math,p->english,p->clanguage,p->totalscore,p->classrank,p->schoolrank);
				}
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==3&&p->clanguage!=-1){
				if(p->clanguage>=average){
				     count1++;
					 printf("%2d%8s%5s%13s%4s     ������  %6d%10d%10d%10d%10d%10d\n",p->id,p->name,p->sex,p->specialty,p->classes,p->math,p->english,p->clanguage,p->totalscore,p->classrank,p->schoolrank);
				}
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==4&&p->comprehensive!=-1){
				if(p->comprehensive>=average){
				     count1++;
					 printf("%2d%8s%5s%13s%4s     �о���  %8d%12d%10d%10d%10d\n",p->id,p->name,p->sex,p->specialty,p->classes,p->comprehensive,p->thesis,p->totalscore,p->classrank,p->schoolrank);
				}
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==5&&p->thesis!=-1){
				if(p->thesis>=average){
				     count1++;
					 printf("%2d%8s%5s%13s%4s     �о���  %8d%12d%10d%10d%10d\n",p->id,p->name,p->sex,p->specialty,p->classes,p->comprehensive,p->thesis,p->totalscore,p->classrank,p->schoolrank);
				}
			}
			p=p->next;
		}
	printf("��ѯ�ɹ���\n");
	printf("�ð༶���ſ�Ŀ��ƽ����Ϊ%.3lf\n",average);
	printf("����ƽ���ɼ��������ܹ�Ϊ%d��\n",count1);
	printf("�밴���������...\n");
	getchar();
	getchar();
	system("cls");
}

void statistic3()
{
	 int course;
	 char specialty[80],classes[80];
	 do{
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
}

void statistic4()
{
	Student *p=head;
	int category1,subject,count=0,sum=0,num[5],i;
	char specialty[80],classes[80];
	enum studentcategory category;

	do{
		printf("������ѧ������(������-0���о���-1)��");
	    scanf("%d",&category1);
		if(category1!=1&&category1!=0)
			printf("������������������");
		else break;
	}while(1);
	category=(enum studentcategory)category1;
	printf("������רҵ���ƣ�");
	scanf("%s",specialty);
	printf("������༶��Ϣ��");
	scanf("%s",classes);
	if(category==UNDERGRADUATE){
		do{
			printf("��ѡ���ѯ��Ŀ������-1��Ӣ��-2��C����-3����");
		    scanf("%d",&subject);
			if(subject!=1&&subject!=2&&subject!=3)
				printf("������������������...\n");
			else break;
		}while(1);
	}
	else {
		do{
			printf("��ѡ���ѯ��Ŀ���γ����-4�����ĳɼ�-5����");
		    scanf("%d",&subject);
			if(subject!=4&&subject!=5)
				printf("������������������...\n");
			else break;
		}while(1);
	}

	for(i=0;i<5;i++)num[i]=0;

	while(p!=NULL){
	      if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0)
			  break;
		  p=p->next;
	}
	if(p==NULL){
	    printf("û���ҵ�����ѧ���Ļ�����Ϣ���밴���������...\n");
		getchar();
		system("cls");
		return;
	}
	else {
		while(p!=NULL){
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==1&&p->math!=-1){
				   num[p->math/10-5]++;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==2&&p->english!=-1){
				   num[p->math/10-5]++;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==3&&p->clanguage!=-1){
				   num[p->math/10-5]++;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==4&&p->comprehensive!=-1){
				   num[p->math/10-5]++;
			}
			if(p->category==category&&strcmp(p->specialty,specialty)==0&&strcmp(p->classes,classes)==0&&subject==5&&p->thesis!=-1){
				   num[p->math/10-5]++;
			}
			p=p->next;
		}
	}
	printf("��ѯ�ɹ���\n");
	printf(">>�ȼ�ΪA������Ϊ%dλ\n",num[4]);
	printf(">>�ȼ�ΪB������Ϊ%dλ\n",num[3]);
	printf(">>�ȼ�ΪC������Ϊ%dλ\n",num[2]);
	printf(">>�ȼ�ΪD������Ϊ%dλ\n",num[1]);
	printf(">>�ȼ�ΪE������Ϊ%dλ\n",num[0]);
	printf("�밴���������...\n");
	getchar();
	getchar();
	system("cls");
}