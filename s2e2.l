/*
DESCRIPTION:
For every occurence of vowel, consonant or digit, the corresponding is incremented also num_chars is incremented. Then if any end character is found,
it is checked that if it followed a word or not.

STEPS:
-save file as : task2.l
-run lex on source file : gcc lex.yy.c -lfl
-execute the executable genetrated on compilation : ./a.out
-Input any combination of string you want to check the output 
-press Ctrl + D to terminate the program
*/

%{
int vow = 0;
int con = 0;
int w = 0;
int num = 0;
int ch = 0;    
%}
%%
[aeiouAEIOU] {vow++;}
[a-zA-Z^aeiouAEIOU] {con++;}
[ ]+ {w++;}
\n {w++;}
[0-9] {num++;}
.  {ch++;}
%%
int main()
{
    yylex();
    printf("Vowels = %d\n Consonants = %d\n characters = %d\n words = %d\n", vow, con, ch+num+vow+con, w);
}