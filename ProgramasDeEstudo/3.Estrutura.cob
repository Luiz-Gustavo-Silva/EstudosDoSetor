       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTRUTURA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      *******************************************************************
      *COMO REGRA DE SINTAXE, TODA SECTION, DIVISION, PARAGRAFO E INS-  *
      *TRUCOES DO COBOL DEVEM SER TERMINADAS EM PONTO (.), POR EXEMPLO: *                                    *
      *                                                                 *
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PONTO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  PONTINHO PIC X(9) VALUE "PONTUANDO".

       PROCEDURE DIVISION.
           DISPLAY "CADE MEU PONTO?"
           DISPLAY PONTINHO.
       END PROGRAM PONTO.
      *                                                                 *
      *COMO PODE VER, NO PROCEDURE DIVISION NAO PRECISA-SE SE ENCERRAR  *
      *TUDO COM (.), MAS SIM A ULTIMA LINHA DE UM PARAGRAFO.            *
      *AFETAR A LINHA TODA.                                             *
      *                                                                 *
      *O COBOL POSSUI 4 DIVISOES (IDENTIFICATION DIVISION - ENVIRONMENT *
      *- DATA DIVISION - PROCEDURE DIVISION).                           *
      *                                                                 *
      *A DECLARACAO DAS DIVISIONS DEVEM SER FEITAS NA AREA A.           *
      *******************************************************************
       END PROGRAM ESTRUTURA.
