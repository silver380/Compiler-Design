%{
    #include <stdio.h>
%}

%token INT CHAR IF ELSE ELSEIF WHILE FOR RETURN VOID MAIN CONTINUE BREAK IDENTIFIER INT_CONST OUT_OF_RANGE
ONE_LINE_COMMENT MULTI_LINE_COMMENT LESS_EQUAL EQUAL NOT_EQUAL GREATER_EQUAL BITWISE_OR BITWISE_AND OR AND 
BITWISE_XOR NOT PLUS MINUS DIVISION MULTIPLY ASSIGN LEFTPAREN RIGHTPAREN LEFTBRACKET RIGHTBRACKET LEFTB
RIGHTB COMMA DOT MYSTERY CHAR_CONST LESS GREATER

%start input
%empty epsilon

%%
input:
    FUNCTIONS INT MAIN LEFTPAREN RIGHTPAREN LEFTB STMTS RIGHTB
    ;
FUNCTIONS:
    TYPE IDENTIFIER LEFTPAREN INP RIGHTPAREN LEFTB STMTS RIGHTB  FUNCTIONS
    |
    ;
TYPE:
    INT
    |
    VOID
    |
    CHAR
    ;
INP:
    TYPE_AR IDENTIFIER 
    |
    TYPE_AR IDENTIFIER COMMA TYPE_AR IDENTIFIER 
    |
    TYPE_AR IDENTIFIER COMMA TYPE_AR IDENTIFIER COMMA
    ;
TYPE_AR:
    INT
    |
    CHAR
;
STMTS:
    STMT STMTS
    | STMT
    ;
STMT:
    IF LEFTPAREN CONDITION RIGHTPAREN LEFTB STMTS RIGHTB ELSEIFGS ELSEG
    |
    WHILE LEFTPAREN CONDITION RIGHTPAREN LEFTB STMTS_LOOP RIGHTB
    |
    FOR LEFTPAREN EXPR COMMA CONDITION COMMA EXPR RIGHTPAREN LEFTB STMTS_LOOP  RIGHTB
    |
    EXPR DOT
    |
    RETURN DOT
    |
    RETURN EXPR
    ;
STMTS_LOOP:
    STMTS_LOOP  BREAK DOT STMTS_LOOP
    |
    STMTS
    |
    STMTS_LOOP CONTINUE DOT STMTS_LOOP
    |
    ;
ELSEIFGS:
        ELSEIF LEFTPAREN CONDITION RIGHTPAREN LEFTB STMTS RIGHTB ELSEIFGS
        |
    ;
ELSEG:
    ELSE LEFTB STMTS RIGHTB
    |
    ;
EXPR:

    |
    INT IDENTIFIER DOT
    |
    INT IDENTIFIER ASSIGN E DOTB
    |
    CHAR IDENTIFIER DOT
    |
    CHAR IDENTIFIER ASSIGN CHAR_CONST DOT
    |
    CHAR IDENTIFIER ASSIGN E DOT
    |
    IDENTIFIER ASSIGN E DOTB
    |
    IDENTIFIER ASSIGN CHAR_CONST DOT
    |
    E
    |
    LEFTPAREN EXPR RIGHTPAREN
    ;
DOTB:
    DOT
    |
    ;

E:
    T EP 
    ;
EP:
    PLUS T EP
    |
    MINUS T EP
    |
    BITWISE_AND T EP
    |
    BITWISE_OR T EP
    |
    BITWISE_XOR T EP
    |
    ;
T:
    F TP 
    ;
TP:
    MULTIPLY F TP
    |
    DIVISION F TP
    |
    ;
F:
    LEFTPAREN E RIGHTPAREN
    |
    IDENTIFIER
    |
    INT_CONST
    ;
CONDITION:
    EXPR COPERATOR CONDITION
    |
    EXPR
    |
    LEFTPAREN CONDITION RIGHTPAREN
    |
    NOT CONDITION
    ;
COPERATOR:
    LESS 
    | LESS_EQUAL 
    | EQUAL
    | NOT_EQUAL 
    | GREATER 
    | GREATER_EQUAL 
    | OR 
    | AND
    ;

    

%%