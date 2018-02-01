/*
DESCRIPTION:

STEPS:
-save file as : task3.l
-run lex on source file : gcc lex.yy.c -lfl
-execute the executable genetrated on compilation : ./a.out
-Input any combination of string you want to check the output 
-press Ctrl + D to terminate the program
*/

%{
int commands = 0;
%}
%%
("ls")|("cat")|("ping")|("wc")|("mkdir")|("cd")|("rm")|("rmdir") {commands++;}
. |
\n ;
%%
int main(){
    yylex();
    printf("Number of commands found: %d\n",commands);
}