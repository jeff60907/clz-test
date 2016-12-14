#include <stdio.h>
#include <stdint.h>
#include <assert.h>
#include <limits.h>
#include "clz.h"


int main()
{
    for(int i=1; i<UINT_MAX; i++)
    {
        if( __builtin_clz(i) != clz_iteration(i))
            printf("%d\n",i);
        if( __builtin_clz(i) != clz_binary_search(i))
            printf("%d\n",i);
        if( __builtin_clz(i) != clz_binary_shift(i))
            printf("%d\n",i);
        if( __builtin_clz(i) != clz_recursive(i,16))
            printf("%d\n",i);
        if( __builtin_clz(i) != clz_harley(i))
            printf("%d\n",i);
    }
    printf("all right\n");
    return 0;
}
