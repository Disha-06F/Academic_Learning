#include <bits/stdc++.h>
using namespace std;
int main()
{
int i, j, divlen, msglen;
char input[100], div[100], temp[100];
char quot[100], rem[100], div1[100];
printf("Enter Data: ");
gets(input);
printf("Enter divisor: ");
gets(div);
divlen = strlen(div);
msglen = strlen(input);
strcpy(div1, div);
for (i = 0; i < divlen - 1; i++)
input[msglen + i] = '0';
for (i = 0; i < divlen; i++)
temp[i] = input[i];
for (i = 0; i < msglen; i++)
{
quot[i] = temp[0];
if (quot[i] == '0')
{
for (j = 0; j < divlen; j++)
div[j] = '0';
}
else
{
for (j = 0; j < divlen; j++)
div[j] = div1[j];
}
for (j = divlen - 1; j > 0; j--)
{
if (temp[j] == div[j])
rem[j - 1] = '0';
else
rem[j - 1] = '1';
}
rem[divlen - 1] = input[i + divlen];
strcpy(temp, rem);
}
strcpy(rem, temp);
printf("\nQuotient is ");
for (i = 0; i < msglen; i++)
printf("%c", quot[i]);
printf("\nRemainder is ");
for (i = 0; i < divlen - 1; i++)
printf("%c", rem[i]);
printf("\nCodeword: ");
for (i = 0; i < msglen; i++)
printf("%c", input[i]);
for (i = 0; i < divlen - 1; i++)
printf("%c", rem[i]);
printf("\n");
}
