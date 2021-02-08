       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVIMENTACAO-DE-DADO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  ENDERECO PIC X(9) VALUE "BOMBERO".
       01  CIDADE PIC X(9) VALUE "MAUA".

       PROCEDURE DIVISION.
      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                      MOVIMENTACAO DE DADOS                      *
      *                                                                 *
      *                                                                 *
      *    PARA PASSAR DADOS DE UMA VARIAVEL PARA OUTRA SE USA O COMANDO*
      *MOVE, EXEMPLO:                                                   *


           MOVE 'BANANINHA' TO CIDADE.
           MOVE CIDADE TO ENDERECO.
           DISPLAY CIDADE.
           DISPLAY ENDERECO.
           MOVE 'MAUA' TO CIDADE.
           DISPLAY CIDADE.


      *                             REGRAS                              *
      *                                                                 *
      *    -A VARIAVEL RECEPTORA(A 2ª VARIAVEL) NAO PODE SER UMA LITERAL*
      *    -AS DUAS VARIAVEIS DEVEM TER O MESMO FORMATO, NUMERICO PARA  *
      *NUMERICO, ALFANUMERICO PARA ALFANUMERICO, ASSIM POR DIANTE.      *
      *    CASO A RECEPTORA TENHA UM TAMANHO MENOR QUE A EMISSORA, OCOR-*
      *RE UM TRUNCAMENTO. CASO SEJA MAIOR A RECEPTORA IRA AUTOMATICAMEN-*
      *TE SER PREENCHIDA COM ESPACOS, NO CASO DE SER ALFANUMERICA, MAS  *
      *SE FOR NUMERICA, SERA COM ZEROS A ESQUERDA.                      *
      *******************************************************************
       END PROGRAM MOVIMENTACAO-DE-DADO.
