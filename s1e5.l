%{
int linenum = 1;
%}

%%
[\t]           ;
\n             linenum++;
[0-9]+         printf("Integer\n");
[a-zA-Z]+      printf("Identifier\n");
.              printf("Error in line: %d\n",linenum);
%%
int main(){
    yylex();
}