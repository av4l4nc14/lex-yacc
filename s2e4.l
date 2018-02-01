/*

STEPS:
-save file as : task4.l
-run lex on source file : gcc lex.yy.c -lfl
-execute the executable genetrated on compilation : ./a.out
-Input any combination of string you want to check the output 
-press Ctrl + D to terminate the program
*/

%{
int npint = 0,nnint = 0,noct = 0,nbin = 0,nhex = 0,npdec = 0,nndec = 0;
%}
%%
0[oO][0-7]+ {noct++;}
([-][1-9][0-9]*) {nnint++;}
([+]?[1-9][0-9]*) {npint++;}
([-][0-9]*)"."([0-9]+) {nndec++;}
([+]?[1-9][0-9]*)"."([0-9]+) {npdec++;}
0[xX][0-9a-fA-F]+ {nhex++;}
0[bB][01]+ {nbin++;}
%%
int main(){
    yylex();
    printf("\nNINT: %d\nPINT: %d\nNDEC: %d\nPDEC: %d\nHEX: %d\nOCT: %d\nBIN: %d\n",nnint,npint,nndec,npdec,nhex,noct,nbin);
}