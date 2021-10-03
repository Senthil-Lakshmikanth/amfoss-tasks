#include <stdio.h>
int main()
{
    char string[100], ch;
    int shift;

    printf("Enter the message : ");
    gets(string);
    printf("Enter shift : ");
    scanf("%d",&shift);

    for(int i=0;string[i]!='\0';i++)
    {
        ch=string[i];
        if(ch>='a' && ch<='z')
        {
            ch+=shift;
            if(ch>'z')
                ch=ch-'z' + 'a' -1;
            string[i]=ch;
        }
        else
        {
            if(ch>='A' && ch<='Z')
            {
                ch+=shift;
                if(ch>'Z')
                    ch=ch-'Z' + 'A' -1;
                string[i]=ch;
            }
         }
    }
    printf(" Encrypted message : %s",string);
    return 0;
}
