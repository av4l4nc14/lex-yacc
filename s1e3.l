/*
DESCRIPTION:
REJECT is a special option for actions, it goes to the next alternative transition rule after the current one.
One of it's use can be to find the occurences of substrings in the following code.
| indicates that the action for this rule is from the action for the next rule. Hence, in the following code,
whenever . i.e all characters except newline occurs, | ensures that the action from the next rule is applied. So in our code, 
everything except occurences of pink, ink and pin are ignored.

STEPS:
-save file as : sample3.l
-run lex on source file : gcc lex.yy.c -lfl
-execute the executable genetrated on compilation : ./a.out
-Input any combination of string you want to check the output 
-I've entered: jessipinkman but only occurences of pink, ink and pin are recorded
-press Ctrl + D to terminate the program
*/

%{
int npink=0,nink=0,npin=0;
%}
%%
pink {npink++; printf("pink\n"); REJECT;}
ink {nink++; printf("ink \n"); REJECT;}
pin {npin++; printf("pin \n"); REJECT;}
. |
\n ;
%%
int main(){
    yylex();
    printf("Total pink: %d, total pin: %d, total ink: %d\n",npink,npin,nink);
}