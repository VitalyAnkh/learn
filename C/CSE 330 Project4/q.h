//CSE 330 Project 2
//Name: Guangxuan Meng
#include "tcb.h"
#include <stdlib.h>
#include <stdio.h>

typedef struct queue{
	TCB_t *head;	//a pointer to the first element of the queue
	int count;
}queue;

void InitQ(queue *A)	//creates a empty queue, pointed to by the variable head
{
	A->head = NULL;
	A->count = 0;
}

void AddQ(queue *A, TCB_t *item)	//adds a queue item, pointed to by item, to the queue pointed to by head.
{
	if (A->head == NULL)	//if queue is empty, the head pointer is NULL
	{
		A->head = item;
		A->count++;
		A->head->next = item;
		A->head->prev = item;
	}
	else
	{
		TCB_t* rear;
		rear = A->head->prev;	//rear is prev of head
		item->next = A->head;	//item becomes new head
		item->prev = rear;
		A->head->prev = item;	//set prev of old head to item
		rear->next = item;		//set next of rear to item
		A->count++;
	}
}

TCB_t* DelQ(queue* A)	//deletes an item from head and returns a pointer to the deleted item
{	
	if (A->head == NULL)
	{
		return NULL;
	}
	else
	{
		TCB_t* t = A->head;
		if ((A->head != A->head->prev) && (A->head != A->head->next))	//queue A contains more than one elements
		{
			A->head->prev->next = A->head->next;	//set next of last element to second element
			A->head->next->prev = A->head->prev;	//set prev of second element to last element
			A->head == A->head->next;	//set new head
			A->count--;
		}
		else
		{
			A->head = NULL;
			A->count = 0;
		}
		t->next = NULL;
		t->prev = NULL;
		return t;
	}
}

void RotateQ(queue* A)	//moves the header pointer to the next element in A
{
	AddQ(A, DelQ(A));
}