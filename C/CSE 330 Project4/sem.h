//CSE 330 Project 3
//Name: Guangxuan Meng
#include "threads.h"

queue* ReadyQ;
//A value field and a queue of TCBs
typedef struct semaphore
{
	int value;
	queue* q;
}semaphore;

//Initializes the value field with the specified value
void InitSem(semaphore* s, int v)
{
	s->q = (queue*)malloc(sizeof(queue));
	InitQ(s->q);
	s->value = v;
}

//The P routine decrements the semaphore, 
//and if the value is 0 or less than zero 
//then blocks the process in the queue associated with the semaphore
int P(semaphore* s)
{
	ucontext_t previous;
	if (s->value > 0)
	{
		s->value--;
		return 0;
	}
	else	//block
	{
		previous = ReadyQ->head->context;
		TCB_t* t = DelQ(ReadyQ);
		AddQ(s->q, t);	//add item t to s->q
		swapcontext(&previous, &(ReadyQ->head->context));
		return 1;
	}
}

//The V routine increments the semaphore, 
//and if the value is 0 or negative, 
//then takes a PCB out of the semaphore queue and puts it into the run queue
void V(semaphore* s)
{
	s->value++;
	if (s->q != NULL)	//Check if there are any threads waiting in the semaphore¡¯s queue
	{		
		TCB_t* t = DelQ(s->q);	//delete head from s->q
		AddQ(ReadyQ, t);	//unblock
	}
}