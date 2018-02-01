/*
DESCRIPTION:
The following program counts the occurences of letter(s) i.e the regexp [a-zA-Z]. This also demonstrates the use of
routines in lex i.e the call to foo() function.
The Transition rule {letter}+ foo(); calls the foo function on every occurences of a word i.e one or more instance of a letter 
and since we are not ignoring the spaces, we get a new word on every space.

STEPS:
-save file as : sample2.l
-run lex on source file : gcc lex.yy.c -lfl
-execute the executable genetrated on compilation : ./a.out
-Input any combination of string you want to check the output 
-I've entered: Hey there this is a lex program and as there are 7 words, the call to foo() is made 7 times.
-press Ctrl + D to terminate the program
*/

%{
void foo();
%}
letter [a-zA-Z]
%%
{letter}+ foo();
%%
void foo() {
    printf("I love lex\n");
}
int main() {
yylex();
}