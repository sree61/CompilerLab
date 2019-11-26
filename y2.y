%{
    #include<stdio.h>
    int valid=1;    
%}

%token digit letter
%%
start: letter s
s: letter s
    |
    ;

%%

int yyerror()
{
    printf("\nIt is not an identifier!\n");
    valid=0;
    return 0;
}
int main()
{
    printf("\nEnter a name to test for identifier:");
    yyparse();
    if(valid)
    {
        printf("\n It is an identifier!\n");
    }
}