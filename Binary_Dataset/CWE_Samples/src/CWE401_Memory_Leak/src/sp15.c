/*
 * Safe malloc
 *
 * Author: Yule Sui
 * Date: 02/04/2014
 */

#include "memleak_check.h"

// TC15: List reversal 
struct List {
	struct List * next;
	int a;
};

struct List *reverse(struct List *x) {
	struct List *y, *t;
	y = x->next;
	free(x);
	x = y;
	while (x != 0) {
		t = x->next;
		x->next = y;
		y = x;
		x = t;
	}
	t = (struct List *) malloc(sizeof(struct List*));
	t->next = y;
	return t;
}

struct List *main() {
	struct List *node, *ret_val;
	node = (struct List *) malloc(sizeof(struct List*));
	ret_val = reverse(node);
	free(ret_val);
	free(ret_val->next);
	return ret_val;
}

