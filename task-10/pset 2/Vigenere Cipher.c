#include<stdio.h>
#include<string.h>

int main()
{
    char string[100];
    char key[100];
    
    printf("Enter Plain Text : ");
    gets(string);
    printf("Enter Key : ");
    gets(key);
    
    int i,j;
    int PTlen=strlen(string), KYlen=strlen(key);
    
    char newKEY[PTlen], encryptedMSG[PTlen];
    
    for(i=0,j=0; i<PTlen; i++,j++)
    {
        if(j==KYlen)
            j=0;
        newKEY[i]=key[j];
    }
    
    
    for(int i=0; i<PTlen;i++)
        encryptedMSG[i]=((string[i]+newKEY[i])%26) + 'A';
    printf("%s",encryptedMSG);
    return 0;
}
