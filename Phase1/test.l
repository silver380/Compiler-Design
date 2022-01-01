%option noyywrap
/*Definition Section*/
%{
    #include <stdio.h>
    #include <math.h>
    #include <stdlib.h>
    #define DIGIT [0-9]
    #define LETTER [a-zA-Z]
    #define C [//]
    #define S []
    #define L [\n]
    #define DIGIT [0-9]
    #define DIGIT [0-9]
    #define DIGIT [0-9]
    #define DIGIT [0-9]
    #define DIGIT [0-9]
    #define DIGIT [0-9]
    #define DIGIT [0-9]

%}

/* Rules */

%%

%%

int main(){

    FILE* f = fopen("test_case.txt","r");
    yyin = f;
    yylex();
    return 0;
}