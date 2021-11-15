//CSE 330 Project 2
//Name: Guangxuan Meng
#include "q.h"
#include <stdlib.h>
#include <stdio.h>

queue* RunQ;

void start_thread(void (*function)(void))
{	
	/*begin pseudo code 
	allocate a stack(via malloc) of a certain size(choose 8192) 
	allocate a TCB(via malloc)
	call init_TCB with appropriate arguments
	call addQ to add this TCB into the ¡°RunQ¡± which is a global header pointer
	end pseudo code*/
	void* stack = malloc(8192);
	TCB_t* t = (TCB_t*)malloc(sizeof(TCB_t));
	init_TCB(t, function, stack, 8192);
	AddQ(RunQ, t);
}

void run()
{
	ucontext_t parent;	//get a place to store the main context, for faking
	getcontext(&parent);	//magic sauce
	swapcontext(&parent, &(RunQ->head->context));	//start the first thread
}

void yield()	//similar to run
{
	/*rotate the run Q;
	swap the context, from previous thread to the thread pointed to by RunQ*/
	ucontext_t current;
	RotateQ(RunQ);
	getcontext(&current);
	swapcontext(&(RunQ->head->prev->context), &(RunQ->head->context));
}
