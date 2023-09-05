#include <stdio.h>
int main(int ac, char **av)
{
    char c;
    if (ac < 2 || ac > 2)
    {
        printf("not correct number of args\n");
        return (0);
    }

    printf("%c", av[1][0]);
    for (int i = 1; av[1][i] != '\0'; i++)
    {
        c = av[1][i] - i;
        printf("%c", c);
    }
    printf("\n");
    return 0;
}

// token 
