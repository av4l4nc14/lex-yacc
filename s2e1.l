/*
DESCRIPTION:
Every time a digit or letter is found, yytext passes it to the function foo() where it is added to the character array holding all the 
letters and digits in the input. The after the yylex() is executed, 
    full[j] = '\0';
adds EOF to indicate end of the string. Finally we print it.

STEPS:
-save file as : task1.l
-run lex on source file : gcc lex.yy.c -lfl
-execute the executable genetrated on compilation : ./a.out
-Input any combination of string you want to check the output 
-press Ctrl + D to terminate the program
*/


%{
void foo(char *x);
int j = 0;
char full[1000];
%}
%%
[0-9] foo(yytext);
[a-zA-Z] foo(yytext);
.  ;
\n ;
%%
void foo(char *x){
    full[j++] = *x;
}
int main(){
    yylex();
    full[j] = '\0';
    printf("%s\n",full);
}