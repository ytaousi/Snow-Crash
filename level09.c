#include <stdio.h>
int main(int ac, int av)
{
    if (ac < 2 || ac > 2)
    {
        printf("not correct number of args\n");
        exit(1);
    }

    printf("%c", av[1][0]);
    for (int i = 1; av[1][i] != "\0"; i++)
    {
        printf("%c", (av[1][i] - i));
    }
    printf("\n");
    return 0;
}

// token 
