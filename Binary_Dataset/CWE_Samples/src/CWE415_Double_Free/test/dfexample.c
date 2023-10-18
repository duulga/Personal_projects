/*
 * double free
 * Author: DDUMWAMU
 * Date: 07/27/2023
 */



int main(){
    int *i;
    int *b;
    if(i)
        i = malloc(sizeof(int));
    else
        i = malloc(sizeof(int));
    b = i;
    //safe free
    free(i);
    //double free
    free(b);
    return 0;
}