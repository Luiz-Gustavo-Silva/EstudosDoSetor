       IDENTIFICATION DIVISION.
       PROGRAM-ID. AREA-A.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      *******************************************************************
      *A AREA A (COLUNA 8 ATE A 11), SERVE PARA SE ESCREVER O NOME DE   *
      *PARAGRAFOS, POR EXEMPLO:                                         *
      *                                                                 *
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AREA-B.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  EXISTIR PIC X(6) VALUE "EXISTO".

       PROCEDURE DIVISION.
           DISPLAY EXISTIR.
       END PROGRAM AREA-B.
      *                                                                 *
      *COMO VOCE ACABOU DE VER, TODAS AS DIVISIONS, SECTIONS E VARIAVEIS*
      *COMECAM NA AREA A, ENQUANTO O ALGORITMO DO PROCEDURE DIVISION, SE*
      *INICIA NA AREA B.                                                *
      *******************************************************************
       END PROGRAM AREA-A.
