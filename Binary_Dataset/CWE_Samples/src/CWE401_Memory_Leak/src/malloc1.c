/*
 * Safe malloc
 * Author: Yule Sui
 * Date: 02/04/2014
 */

#include "memleak_check.h"

int main(){
	int *k;	
	int *a = SAFEMALLOC(sizeof(int));
	*a = 100;
	k = a;
	printf("%d,%d,%d,%d\n,",*k,*a,a,k);
	free(a);
	printf("%d,%d,%d,%d\n,",*k,*a,a,k);
}

