#include <stdio.h>

int main()
{
    int h;
    do
    {
        printf("Height : ");
        scanf("%d",&h);
    }
    while (h < 2 || h > 8);
    for (int i = 0; i < h; i++)
    {
	    for (int j = 0; j < h; j++)
        {
            if (j < (h - i - 1))
                printf(" ");
            else
                printf("#");
        }
        printf("\n");
    }
}
