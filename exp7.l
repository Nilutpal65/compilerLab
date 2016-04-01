%{
#include<stdio.h>
%}
comment1 \/\*(.|\n)*\*\/
comment2 \/\/.*
%%

{comment1} ;
{comment2} ;
.|\n ECHO ;

%%

main()
{
yyin = fopen("input.txt","r") ;
yylex();
}
int yywrap()
{
return 1;
}
