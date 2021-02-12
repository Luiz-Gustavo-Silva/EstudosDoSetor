       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       AUTHOR. LUIZ-GUSTAVO-SILVA.
       DATE-WRITTEN. 09-02-2021.
       REMARKS. NUM (11)983478156 / E-MAIL LUIZ.GSILVA@BANDTEC.COM.BR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-CODIGO PIC 9 VALUE 5.
       PROCEDURE DIVISION.
      *******************************************************************
      *                                                                 *
      *COMANDOS CONDICIONAIS SAO COMANDOS EXECUTADOS DEPENDENDO DE UMA  *
      *CONDICAO. A INSTRUCAO QUE COORDENA A CONDICAO NOS COMANDOS CONDI-*
      *CIONAIS E O IF. CONDICOES ESSAS QUE SAO DIVIDAS EM 3 CATEGORIAS: *
      *                                                                 *
      *  -> RELACIONAIS ( = OU IS EQUAL THAN / > OU IS GREATER THAN /   *
      *< OU IS LESS THAN);                                              *
      *                                                                 *
      *  -> TESTE DE SINAL ( IS POSITIVE / IS NEGATIVE / IS ZERO);      *
      *                                                                 *
      *  -> TESTE DE CLASSE ( IS NUMERIC / IS ALPHABET );               *
      *                                                                 *
      *    TESTE DE CONDICAO - EXEMPLOS:                                *
      *                                                                 *
           IF WRK-CODIGO IS EQUAL 5
               DISPLAY " "
           END-IF.
           IF WRK-CODIGO IS GREATER THAN ZERO
               DISPLAY " "
           END-IF.
           IF WRK-CODIGO IS NEGATIVE
               DISPLAY " "
           END-IF.
           IF WRK-CODIGO IS NUMERIC
               DISPLAY " "
           END-IF.
      *                                                                 *
      *TAMBEM EXISTE O NOT PARA SERVIR COMO NEGACAO DA SINTAXE, EXEMPLO:*
      *                                                                 *
           IF WRK-CODIGO IS NOT EQUAL 5
               DISPLAY " "
           END-IF.
           IF WRK-CODIGO IS NOT GREATER THAN ZERO
               DISPLAY " "
           END-IF.
           IF WRK-CODIGO IS NEGATIVE
               DISPLAY " "
           END-IF.
           IF WRK-CODIGO IS NUMERIC
               DISPLAY " "
           END-IF.

      *                                                                 *
      *******************************************************************

       END PROGRAM YOUR-PROGRAM-NAME.
