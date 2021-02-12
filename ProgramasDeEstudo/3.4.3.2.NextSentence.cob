       IDENTIFICATION DIVISION.
       PROGRAM-ID. NEXT-SENTENCE.
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
