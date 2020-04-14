package br.com.compiler.scanner;

import java.io.IOException;
import java.io.StringReader;
import java.util.Scanner;

public class GeneratorTable {
    public static void main(String[] args) throws IOException {
        @SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
        String expression;
        System.out.println("Expressao: ");
        expression = scanner.nextLine();
        System.out.println("Lexema | Tipo | Valor");
        Lexer lexer = new Lexer(new StringReader(expression));
        lexer.yylex();
    }
}