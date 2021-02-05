      ******************************************************************
      * Author: Luiz Gustavo da Silva
      * Date: 02/01/2021
      * Purpose: Calculadora em Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculadora.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  VALOR01 PIC 9(30).
       01  VALOR02 PIC 9(30).
       01  RESULTADO PIC 9(30).
       01  OPCAO PIC 9.
       01  PERMITIR PIC X(3).
       PROCEDURE DIVISION.
      *----Criei um laço para o usuário poder fazer mais de uma conta
           PERFORM UNTIL PERMITIR = 'NAO'
      *----Atribui 0 a variável sempre que o laço voltar ao início
               MOVE 0 TO RESULTADO
      *----Introdução ao usuário
               DISPLAY '+----------------------------+'
               DISPLAY '|Bem vindo a calculadora.cbl |'
               DISPLAY '|          ---//---          |'
      *----Área em que o usuário escolhe o que a calculadora vai fazer
               DISPLAY '|Qual operacao deseja  fazer?|'
               DISPLAY '|          ---//---          |'
               DISPLAY '|  1 - Somar;                |'
               DISPLAY '|  2 - Subtrair;             |'
               DISPLAY '|  3 - Dividir;              |'
               DISPLAY '|  4 - Multiplicar.          |'
               DISPLAY '+----------------------------+'
               ACCEPT OPCAO
      *----Área onde o usuário insere os números a serem calculados
               DISPLAY 'Insira o primeiro valor:' ACCEPT VALOR01
               DISPLAY 'Insira o segundo valor' ACCEPT VALOR02
      *----Case que serve para escolher a operação
               EVALUATE OPCAO
                   WHEN 1
                       ADD VALOR01 TO RESULTADO
                       ADD VALOR02 TO RESULTADO
                   WHEN 2
                       ADD VALOR01 TO RESULTADO
                       SUBTRACT VALOR02 FROM RESULTADO
                   WHEN 3
                       DIVIDE VALOR01 BY VALOR02 GIVING RESULTADO
                   WHEN 4
                       MULTIPLY VALOR01 BY VALOR02 GIVING RESULTADO
               END-EVALUATE
      *----Comando IF/ELSE para verissidade de dados.
               IF OPCAO IS LESS THAN 1 OR OPCAO IS GREATER THAN 4
                   DISPLAY ' '
                   DISPLAY 'Numero de operacao incorreto, tente novamen'
           'te.'
                   DISPLAY ' '
               ELSE
                   DISPLAY RESULTADO
                   DISPLAY 'Deseja fazer outra conta? SIM/NAO'
                   ACCEPT PERMITIR
               END-IF
           END-PERFORM.
       END PROGRAM Calculadora.
