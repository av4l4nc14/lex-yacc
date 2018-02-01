/*
DESCRIPTION:
Every lex source is a table of 
- regex
- program fragments

In the code below, the regexp definations of digit[0-9] and letter[a-zA-Z] match the numbers 0-9 and letters a-z or A-Z respectively.
In the transition rule, the combinations of letters and digits are scanned and if matched, the C code prints them as an Identifier.
If a new line is inserted, the C code displays it on the screen.

In the main function, the call to yylex() function keeps makes the program read for input until Ctrl + D is pressed and user call 
for the termination of the program.

STEPS:
-save file as : sample1.l
-run lex on source file : gcc lex.yy.c -lfl
-execute the executable genetrated on compilation : ./a.out
-Input any combination of string you want to check the output 
-press Ctrl + D to terminate the program
*/


digit [0-9]
letter [a-zA-Z]
%%
{letter}({letter}|{digit})* printf("id: %s\n", yytext);
\n printf("new line\n");
%%
int main() {
yylex();
}
