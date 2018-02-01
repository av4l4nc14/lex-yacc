/*
DESCRIPTION:
The following lex code counts the number of words and for each occurence it prints : a word on the screen

STEPS:
-save file as : sample4.l
-run lex on source file : gcc lex.yy.c -lfl
-execute the executable genetrated on compilation : ./a.out
-Input any combination of string you want to check the output 
-I've entered: hello world hey there and "a word" is printed 4 times and the counter counts the occurences which is printed on termination
-press Ctrl + D to terminate the program

*/

%{
int counter = 0;
%}
letter [a-zA-Z]
%%
{letter}+ {printf("a word\n"); counter++;}
%%
int main() {
yylex();
printf("There are total %d words\n", counter);
}