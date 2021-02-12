       IDENTIFICATION DIVISION.
       PROGRAM-ID. NEXT-SENTENCE.
       AUTHOR. LUIZ-GUSTAVO-SILVA.
       DATE-WRITTEN. 10-02-2021.
       REMARKS. NUM (11)983478156 / E-MAIL LUIZ.GSILVA@BANDTEC.COM.BR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-VALOR PIC 9(4) VALUE "11".
       PROCEDURE DIVISION.
      *******************************************************************
      *                                                                 *
      *QUANDO NAO TIVER NADA PARA SE FAZER NAQUELA CONDICAO, SE COLOCA  *
      *NEXT SENTENCE DIZER "NAO TEM NADA PARA FAZER AQUI". EXEMPLO:     *
      *                                                                 *
           IF WRK-VALOR IS GREATER THAN 10
               NEXT SENTENCE
           ELSE
               ADD 10 TO WRK-VALOR
           END-IF.
      *                                                                 *
      *******************************************************************
       END PROGRAM NEXT-SENTENCE.
