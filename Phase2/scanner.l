%option noyywrap
/*Definition Section*/
%{
    #include "parser.tab.h"
    #include <stdio.h>
    #include <math.h>
    #include <stdlib.h>

%}

/* Rules */
DIGIT    [0-9]
LETTER   [a-zA-Z]
L [\n]
ID ({LETTER}|_)({LETTER}|{DIGIT}|_)*


%%
"int" {
    return(INT);
}
"char" {
    return(CHAR);
}
"if" {
    return(IF);
}
"else" {
    return(ELSE);
}
"elseif" {
    return(ELSEIF);
}
"while" {
    return(WHILE);
}
"for" {
    return(FOR);
}
"return" {
   return(RETURN);
}
"void" {
    return(VOID);
}
"main" {
    return(MAIN);
}
"continue" {
    return(CONTINUE);
}
"break" {
    return(BREAK);
}
{ID}+ {
    return(IDENTIFIER);
}
((-{0,1})[1-9]{DIGIT}*)|[0] {
    int num = atoi(yytext);
    if ( num <= 32767 && num >= -32768){
       return(INT_CONST);
    }
    else{
        return(OUT_OF_RANGE);
    }
}
["].*["] {
    return(CHAR_CONST);
}
"#".* {
    return(ONE_LINE_COMMENT);
}
"#!"(.*{L})*.*"!#" {
   return(MULTI_LINE_COMMENT);
}
"<" {
    return(LESS);
}
"<=" {
    return(LESS_EQUAL);
}
"==" {
    return(EQUAL);
}
"!=" {
    return(NOT_EQUAL);
}
">" {
    return(GREATER);
}
">=" {
    return(GREATER_EQUAL);
}
"|" {
    return(BITWISE_OR);
}
"&" {
    return(BITWISE_AND);
}
"||" {
   return(OR);
}
"&&" {
    return(AND);
}
"^" {
    return(BITWISE_XOR);
}
"!" {
    return(NOT);
}
"+" {
    return(PLUS);
}
"-" {
    return(MINUS);
}
"/" {
    return(DIVISION);
}
"*" {
    return(MULTIPLY);
}
"=" {
    return(ASSIGN);
}
"(" {
    return(LEFTPAREN);
}
")" {
    return(RIGHTPAREN);
}
"[" {
    return(LEFTBRACKET);
}
"]" {
    return(RIGHTBRACKET);
}
"{" {
    return(LEFTB);
}
"}" {
    return(RIGHTB);
}
"," {
    return(COMMA);
}
"." {
    return(DOT);
}
" "|{L}|("\t") {

}
. {
    return(MYSTERY);
}
%%
