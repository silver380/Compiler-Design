/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    INT = 258,
    CHAR = 259,
    IF = 260,
    ELSE = 261,
    ELSEIF = 262,
    WHILE = 263,
    FOR = 264,
    RETURN = 265,
    VOID = 266,
    MAIN = 267,
    CONTINUE = 268,
    BREAK = 269,
    IDENTIFIER = 270,
    INT_CONST = 271,
    OUT_OF_RANGE = 272,
    ONE_LINE_COMMENT = 273,
    MULTI_LINE_COMMENT = 274,
    LESS_EQUAL = 275,
    EQUAL = 276,
    NOT_EQUAL = 277,
    GREATER_EQUAL = 278,
    BITWISE_OR = 279,
    BITWISE_AND = 280,
    OR = 281,
    AND = 282,
    BITWISE_XOR = 283,
    NOT = 284,
    PLUS = 285,
    MINUS = 286,
    DIVISION = 287,
    MULTIPLY = 288,
    ASSIGN = 289,
    LEFTPAREN = 290,
    RIGHTPAREN = 291,
    LEFTBRACKET = 292,
    RIGHTBRACKET = 293,
    LEFTB = 294,
    RIGHTB = 295,
    COMMA = 296,
    DOT = 297,
    MYSTERY = 298,
    CHAR_CONST = 299,
    LESS = 300,
    GREATER = 301
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
