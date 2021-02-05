      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  ALTURA PIC 9(1)V9(2).
       01  PESO PIC 9(3)V9(2).
       01  ALTURA-QUADRADO PIC 9(1)V9(2).
       01  IMC PIC 9(2)V9(2).
       PROCEDURE DIVISION.
           DISPLAY 'Insira sua altura: 'ACCEPT ALTURA.
           MULTIPLY ALTURA BY ALTURA GIVING ALTURA-QUADRADO.
           DISPLAY 'Insira seu peso: ' ACCEPT PESO.
           DIVIDE PESO BY ALTURA-QUADRADO GIVING IMC.
           DISPLAY 'Seu Indice de Massa Corporal corresponde a 'IMC.
       END PROGRAM YOUR-PROGRAM-NAME.
