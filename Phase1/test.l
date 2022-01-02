%option noyywrap
/*Definition Section*/
%{
    #include <stdio.h>
    #include <math.h>
    #include <stdlib.h>

%}

/* Rules */
DIGIT    [0-9]
LETTER   [a-zA-Z]
L [\n]
ID {LETTER}[{LETTER}|{DIGIT}|_]*


%%
"int" {
    printf("TOKEN_INT\n");
}
"char" {
    printf("TOKEN_CHAR\n");
}
"if" {
    printf("TOKEN_IF\n");
}
"else" {
    printf("TOKEN_ELSE\n");
}
"elseif" {
    printf("TOKEN_ELSEIF\n");
}
"while" {
    printf("TOKEN_WHILE\n");
}
"for" {
    printf("TOKEN_FOR\n");
}
"return" {
    printf("TOEKN_RETURN\n");
}
"void" {
    printf("TOKEN_VOID\n");
}
"main" {
    printf("TOKEN_MAIN\n");
}
"continue" {
    printf("TOKEN_CONTINUE\n");
}
"break" {
    printf("TOKEN_BREAK\n");
}
{ID}+ {
    printf("TOKEN_IDENTIFIER\n");
}
-{0,1}[1-9]{DIGIT}* {
    int num = atoi(yytext);
    if ( num <= 32767 && num >= -32768){
        printf("TOKEN_INT_CONST\n");
    }
}
["]({LETTER})*["] {
    printf("TOKEN_CHAR_CONST\n");
}
"#".* {
    printf("ONE_LINE_COMMENT\n");
}
"#!"(.*{L})*.*"!#" {
    printf("MULTI_LINE_COMMENT\n");
}
"<" {
    printf("TOKEN_LESS\n");
}
"<=" {
    printf("TOKEN_LESS_EQUAL\n");
}
"==" {
    printf("TOKEN_EQUAL\n");
}
"!=" {
    printf("TOKEN_NOT_EQUAL\n");
}
">" {
    printf("TOKEN_GREATER\n");
}
">=" {
    printf("TOKEN_GREATER_EQUAL\n");
}
"|" {
    printf("TOKEN_BITWISE_OR\n");
}
"&" {
    printf("TOKEN_BITWISE_AND\n");
}
"||" {
    printf("TOKEN_OR\n");
}
"&&" {
    printf("TOKEN_AND\n");
}
"^" {
    printf("TOKEN_BITWISE_XOR\n");
}
"!" {
    printf("TOKEN_NOT\n");
}
"+" {
    printf("TOKEN_PLUS\n");
}
"-" {
    printf("TOKEN_MINUS\n");
}
"/" {
    printf("TOKEN_DIVISION\n");
}
"*" {
    printf("TOKEN_MULTIPLY\n");
}
"=" {
    printf("TOKEN_ASSIGN\n");
}
"(" {
    printf("TOKEN_LEFTPAREN\n");
}
")" {
    printf("TOKEN_RIGHTPAREN\n");
}
"[" {
    printf("TOKEN_LEFTBRACKET\n");
}
"]" {
    printf("TOKEN_RIGHTBRACKET\n");
}
"{" {
    printf("TOKEN_LEFTB\n");
}
"}" {
    printf("TOKEN_RIGHTB\n");
}
"," {
    printf("TOKEN_COMMA\n");
}
"." {
    printf("TOKEN_DOT\n");
}
.|{L} {

}





%%

int main(){

    FILE* f = fopen("test_case.txt","r");
    yyin = f;
    yylex();
    return 0;
}