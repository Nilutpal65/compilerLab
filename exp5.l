%{
#include<stdio.h>
int keyword=0,variable=0;
%}
%%


false|true|double|stdio.h|include|main|int|float|do|char|else|while|for|if|continue|return|enum { keyword++; }
[a-z][A-Z0-9a-z0-9]* { variable++; }

%%





main(void)
{
yyin= fopen("myfile.txt","r");
yylex();
printf(" This File contains ...");
printf("\n\t%d Keywords", keyword);
printf("\n\t%d Variables",variable);
}
 
int yywrap()
{
return(1);
}
