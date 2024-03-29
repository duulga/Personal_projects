/*
 * Safe malloc
 *
 * Author: Yule Sui
 * Date: 02/04/2014
 */

#include "memleak_check.h"

typedef struct{
    int* f1;
	int* f2;
	int* f3;
}FOO;

//FOO net;


void getfree(FOO* net){
 
	free(net->f1);
	free(net->f2);
	free(net->f3);
}

void readmin(FOO* net1){
	net1->f1 = (int*)SAFEMALLOC(sizeof(int));
	net1->f2 = (int*)SAFEMALLOC(2);
	net1->f3 = (int*)SAFEMALLOC(3);
}

int main(){
	FOO net;
	readmin(&net);	
	getfree(&net);
}

