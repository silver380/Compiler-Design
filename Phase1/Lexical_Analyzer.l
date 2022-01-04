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
    fprintf(yyout, "TOKEN_INT\n");
}
"char" {
    fprintf(yyout, "TOKEN_CHAR\n");
}
"if" {
    fprintf(yyout, "TOKEN_IF\n");
}
"else" {
    fprintf(yyout,"TOKEN_ELSE\n");
}
"elseif" {
    fprintf(yyout,"TOKEN_ELSEIF\n");
}
"while" {
    fprintf(yyout,"TOKEN_WHILE\n");
}
"for" {
    fprintf(yyout,"TOKEN_FOR\n");
}
"return" {
   fprintf(yyout,"TOEKN_RETURN\n");
}
"void" {
    fprintf(yyout,"TOKEN_VOID\n");
}
"main" {
    fprintf(yyout,"TOKEN_MAIN\n");
}
"continue" {
    fprintf(yyout,"TOKEN_CONTINUE\n");
}
"break" {
    fprintf(yyout,"TOKEN_BREAK\n");
}
{ID}+ {
    fprintf(yyout,"TOKEN_IDENTIFIER\n");
}
((-{0,1})[1-9]{DIGIT}*)|[0] {
    int num = atoi(yytext);
    if ( num <= 32767 && num >= -32768){
       fprintf(yyout,"TOKEN_INT_CONST\n");
    }
    else{
        fprintf(yyout,"TOKEN_MYSTERY\n");
    }
}
["]({LETTER})*["] {
    fprintf(yyout,"TOKEN_CHAR_CONST\n");
}
"#".* {
    fprintf(yyout,"ONE_LINE_COMMENT\n");
}
"#!"(.*{L})*.*"!#" {
   fprintf(yyout,"MULTI_LINE_COMMENT\n");
}
"<" {
    fprintf(yyout,"TOKEN_LESS\n");
}
"<=" {
    fprintf(yyout,"TOKEN_LESS_EQUAL\n");
}
"==" {
    fprintf(yyout,"TOKEN_EQUAL\n");
}
"!=" {
    fprintf(yyout,"TOKEN_NOT_EQUAL\n");
}
">" {
    fprintf(yyout,"TOKEN_GREATER\n");
}
">=" {
    fprintf(yyout,"TOKEN_GREATER_EQUAL\n");
}
"|" {
    fprintf(yyout,"TOKEN_BITWISE_OR\n");
}
"&" {
    fprintf(yyout,"TOKEN_BITWISE_AND\n");
}
"||" {
   fprintf(yyout,"TOKEN_OR\n");
}
"&&" {
    fprintf(yyout,"TOKEN_AND\n");
}
"^" {
    fprintf(yyout,"TOKEN_BITWISE_XOR\n");
}
"!" {
    fprintf(yyout,"TOKEN_NOT\n");
}
"+" {
    fprintf(yyout,"TOKEN_PLUS\n");
}
"-" {
    fprintf(yyout,"TOKEN_MINUS\n");
}
"/" {
    fprintf(yyout,"TOKEN_DIVISION\n");
}
"*" {
    fprintf(yyout,"TOKEN_MULTIPLY\n");
}
"=" {
    fprintf(yyout,"TOKEN_ASSIGN\n");
}
"(" {
    fprintf(yyout,"TOKEN_LEFTPAREN\n");
}
")" {
    fprintf(yyout,"TOKEN_RIGHTPAREN\n");
}
"[" {
    fprintf(yyout,"TOKEN_LEFTBRACKET\n");
}
"]" {
    fprintf(yyout,"TOKEN_RIGHTBRACKET\n");
}
"{" {
    fprintf(yyout,"TOKEN_LEFTB\n");
}
"}" {
    fprintf(yyout,"TOKEN_RIGHTB\n");
}
"," {
    fprintf(yyout,"TOKEN_COMMA\n");
}
"." {
    fprintf(yyout,"TOKEN_DOT\n");
}
" "|{L} {

}
. {
    fprintf(yyout,"TOKEN_MYSTERY\n");
}





%%

int main(){

    FILE* input_file = fopen("test_case.txt","r");
    FILE* output_file = fopen("Phase1_Token.txt", "w");
    yyin = input_file;
    yyout = output_file;
    yylex();
    return 0;
}