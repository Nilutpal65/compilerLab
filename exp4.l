%{
#include<stdio.h>
int v =0;
int c =0;
%}
%%
[aeiou AEIOU] {v++;}
[a-zA-Z] {c++;}
. {;}
%%
int main()
{
yylex();
printf("No of vowels are : %d\nNo of consonants are : %d\n", v , c ) ;
return 0;
}
