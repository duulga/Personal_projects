/*
 * Safe malloc
 * Author: Yule Sui
 * Date: 02/04/2014
 */

#include "memleak_check.h"

int* allocation(){
	return SAFEMALLOC(2);

}

int main(){

	int* p;
   if(p)
   	p= allocation();
   else
	p = allocation();
	free(p);
}
