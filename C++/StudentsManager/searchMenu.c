#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include"searchMenu.h"
#include"studentshow.h"

extern Student *head;

void showAllByCategory(enum studentcategory category)
{
    int page=1,allpage,count=0,choose;
	Student *p1=head;
	while(p1!=NULL){
	    if(p1->category==category)
			count++;
		p1=p1->next;
	}
	if(count<=10)
		allpage=1;
	else if(count%10==0){
	    allpage=count/10;
	}
	else allpage=count/10+1;
	do{
		if(page==1&&allpage==1){
		     printf("======================================================================\n");
			 getPage(page,category);
			 printf("----------------------------------------------------------------------\n");
			 printf("             µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾0¡¿·µ»Ø\n",page,allpage);
			 printf("======================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page==1&&allpage>1){
			 printf("=============================================================================\n");
			 getPage(page,category);
			 printf("-----------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾2¡¿ÏÂÒ»Ò³ ¡¾4¡¿Î²Ò³ ¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("==============================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=2&&choose!=4)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page>1&&page!=allpage){
		     printf("================================================================================================\n");
			 getPage(page,category);
			 printf("------------------------------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾1¡¿ÉÏÒ»Ò³ ¡¾2¡¿ÏÂÒ»Ò³ ¡¾3¡¿Ê×Ò³ ¡¾4¡¿Î²Ò³ ¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("================================================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=2&&choose!=4&&choose!=1&&choose!=3)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page==allpage){
			 printf("=============================================================================\n");
			 getPage(page,category);
			 printf("-----------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾1¡¿ÉÏÒ»Ò³ ¡¾3¡¿Ê×Ò³¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("=============================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=1&&choose!=3)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		if(choose==1)
			page--;
		if(choose==2)
			page++;
		if(choose==3)
			page=1;
		if(choose==4)
			page=allpage;
		if(choose==0)break;
		system("cls");
	}while(1);
	printf("²éÑ¯½áÊø£¬Çë°´ÈÎÒâ¼ü¼ÌÐø...\n");
	getchar();
	system("cls");
}

void showByClass(enum studentcategory category,char *specialty,char *classes)
{
	int page=1,allpage,count=0,choose;
	Student *p1=head;
	while(p1!=NULL){
	    if(p1->category==category&&strcmp(p1->specialty,specialty)==0&&strcmp(p1->classes,classes)==0)
			count++;
		p1=p1->next;
	}
	if(count<=10)
		allpage=1;
	else if(count%10==0){
	    allpage=count/10;
	}
	else allpage=count/10+1;
	do{
		if(page==1&&allpage==1){
		     printf("======================================================================\n");
			 getPageByClasses(category,specialty,classes,page);
			 printf("----------------------------------------------------------------------\n");
			 printf("             µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾0¡¿·µ»Ø\n",page,allpage);
			 printf("======================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page==1&&allpage>1){
			 printf("=============================================================================\n");
			 getPageByClasses(category,specialty,classes,page);
			 printf("-----------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾2¡¿ÏÂÒ»Ò³ ¡¾4¡¿Î²Ò³ ¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("==============================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=2&&choose!=4)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page>1&&page!=allpage){
		     printf("================================================================================================\n");
			 getPageByClasses(category,specialty,classes,page);
			 printf("------------------------------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾1¡¿ÉÏÒ»Ò³ ¡¾2¡¿ÏÂÒ»Ò³ ¡¾3¡¿Ê×Ò³ ¡¾4¡¿Î²Ò³ ¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("================================================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=2&&choose!=4&&choose!=1&&choose!=3)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page==allpage){
			 printf("=============================================================================\n");
			 getPageByClasses(category,specialty,classes,page);
			 printf("-----------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾1¡¿ÉÏÒ»Ò³ ¡¾3¡¿Ê×Ò³¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("=============================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=1&&choose!=3)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		if(choose==1)
			page--;
		if(choose==2)
			page++;
		if(choose==3)
			page=1;
		if(choose==4)
			page=allpage;
		if(choose==0)break;
		system("cls");
	}while(1);
	printf("²éÑ¯½áÊø£¬Çë°´ÈÎÒâ¼ü¼ÌÐø...\n");
	getchar();
	system("cls");
}

void showById(int id)    /*¸ù¾ÝÑ§ºÅÏÔÊ¾¸öÈËÐÅÏ¢*/
{
    Student *p=head;
	while(p!=NULL){
	    if(p->id==id)break;
		p=p->next;
	}
	if(p==NULL){
	      printf("Ã»ÓÐÕÒµ½¸ÃÉúÐÅÏ¢...\n");
		  getchar();
		  getchar();
		  system("cls");
		  return;
	}
	else {
		printf("ÒÑÕÒµ½¸ÃÉúÐÅÏ¢£¡\n");
		show_one_student(p);
		printf("Çë°´ÈÎÒâ¼ü¼ÌÐø...\n");
		getchar();
		getchar();
		system("cls");
	}
}

void showByName(char *name)
{
	 Student *p=head;
	while(p!=NULL){
	    if(strcmp(p->name,name)==0)break;
		p=p->next;
	}
	if(p==NULL){
	      printf("Ã»ÓÐÕÒµ½¸ÃÉúÐÅÏ¢...\n");
		  getchar();
		  getchar();
		  system("cls");
		  return;
	}
	else {
		printf("ÒÑÕÒµ½¸ÃÉúÐÅÏ¢£¡n");
		show_one_student(p);
		printf("Çë°´ÈÎÒâ¼ü¼ÌÐø...\n");
		getchar();
		getchar();
		system("cls");
	}
}

void showFailByClassCourse(char *specialty,char *classes,int course)
{
    int page=1,allpage,count=0,choose;
	Student *p1=head;
	while(p1!=NULL){
	    if(strcmp(p1->specialty,specialty)==0&&strcmp(p1->classes,classes)==0&&course==1&&p1->math>=0&&p1->math<60)
			count++;
		else if(strcmp(p1->specialty,specialty)==0&&strcmp(p1->classes,classes)==0&&course==2&&p1->english>=0&&p1->english<60)
			count++;
		else if(strcmp(p1->specialty,specialty)==0&&strcmp(p1->classes,classes)==0&&course==3&&p1->clanguage>=0&&p1->clanguage<60)
			count++;
		else if(strcmp(p1->specialty,specialty)==0&&strcmp(p1->classes,classes)==0&&course==4&&p1->comprehensive>=0&&p1->comprehensive<60)
			count++;
		else if(strcmp(p1->specialty,specialty)==0&&strcmp(p1->classes,classes)==0&&course==5&&p1->thesis>=0&&p1->thesis<60)
			count++;
		p1=p1->next;
	}
	if(count==0){
	   printf("Ã»ÓÐÕÒµ½¸ÃÀàÑ§ÉúµÄÐÅÏ¢...\n");
	   getchar();
	   getchar();
	   system("cls");
	}
	if(count<=10)
		allpage=1;
	else if(count%10==0){
	    allpage=count/10;
	}
	else allpage=count/10+1;
	do{
		if(page==1&&allpage==1){
			 printf("                     ¸ÃÃÅ¿ÆÄ¿²»¼°¸ñµÄÈËÊýÎª%dÎ»                 \n",count);
		     printf("======================================================================\n");
			 getPageFailByClassCourse(specialty,classes,course,page);
			 printf("----------------------------------------------------------------------\n");
			 printf("             µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾0¡¿·µ»Ø\n",page,allpage);
			 printf("======================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page==1&&allpage>1){
			 printf("                       ¸ÃÃÅ¿ÆÄ¿²»¼°¸ñµÄÈËÊýÎª%dÎ»                      \n",count);
			 printf("=============================================================================\n");
			 getPageFailByClassCourse(specialty,classes,course,page);
			 printf("-----------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾2¡¿ÏÂÒ»Ò³ ¡¾4¡¿Î²Ò³ ¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("=============================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=2&&choose!=4)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page>1&&page!=allpage){
			 printf("                                ¸ÃÃÅ¿ÆÄ¿²»¼°¸ñµÄÈËÊýÎª%dÎ»                                \n",count);
		     printf("================================================================================================\n");
			 getPageFailByClassCourse(specialty,classes,course,page);
			 printf("------------------------------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾1¡¿ÉÏÒ»Ò³ ¡¾2¡¿ÏÂÒ»Ò³ ¡¾3¡¿Ê×Ò³ ¡¾4¡¿Î²Ò³ ¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("================================================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=2&&choose!=4&&choose!=1&&choose!=3)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		else if(page==allpage){
			 printf("                        ¸ÃÃÅ¿ÆÄ¿²»¼°¸ñµÄÈËÊýÎª%dÎ»                     \n",count);
			 printf("=============================================================================\n");
			 getPageFailByClassCourse(specialty,classes,course,page);
			 printf("-----------------------------------------------------------------------------\n");
			 printf("  µ±Ç°Ò³ÎªµÚ%dÒ³  ×ÜÒ³ÊýÎª%dÒ³ ¡¾1¡¿ÉÏÒ»Ò³ ¡¾3¡¿Ê×Ò³¡¾0¡¿ÍË³ö\n",page,allpage);
			 printf("=============================================================================\n");
			 do{
			   printf("ÇëÑ¡Ôñ>>");
			   scanf("%d",&choose);
			   if(choose!=0&&choose!=1&&choose!=3)
				   printf("ÊäÈëÓÐÎó£¬ÇëÖØÐÂÑ¡Ôñ...\n");
			   else break;
			 }while(1);
		}
		if(choose==1)
			page--;
		if(choose==2)
			page++;
		if(choose==3)
			page=1;
		if(choose==4)
			page=allpage;
		if(choose==0)break;
		system("cls");
	}while(1);
	printf("²éÑ¯½áÊø£¬Çë°´ÈÎÒâ¼ü¼ÌÐø...\n");
	getchar();
	system("cls");
}