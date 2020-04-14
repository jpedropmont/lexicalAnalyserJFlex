package br.com.compiler.scanner;

%%
%class Lexer
%type Token
%{
private void print_value(String lexema, String tipo, String valor) {
 System.out.println(lexema + ": " + tipo + ": " + valor);
}
%}
%%
"+" 		{ print_value(yytext(), "OPERDOR", "SOMA"); }
"-" 		{ print_value(yytext(), "OPERDOR", "SUBTRACAO"); }
[-]?[\d]+ { print_value(yytext(), "NUMERO", yytext()); }
"*" 		{ print_value(yytext(), "OPERDOR", "MULTIPLICACAO"); }
"/" 		{ print_value(yytext(), "OPERDOR", "DIVISAO"); }
"**"            { print_value(yytext(), "OPERDOR", "EXPONENCIACAO"); }
"(" 		{ print_value(yytext(), "PONTUACAO", "PARENTESE ESQUERDO"); }
")" 		{ print_value(yytext(), "PONTUACAO", "PARENTESE DIREITO"); }
"[" 		{ print_value(yytext(), "PONTUACAO", "COCHETE ESQUERDO"); }
"]" 		{ print_value(yytext(), "PONTUACAO", "COCHETE DIREITO"); }
. {throw new RuntimeException("Lexemas invalidos " + yytext());}