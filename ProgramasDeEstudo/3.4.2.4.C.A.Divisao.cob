       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVISAO.
       AUTHOR. MATHEUS-SANTOS-DA-SILVA.
       DATE-WRITTEN. 06-02-2021.
       REMARKS. NUM (11)975640903 / E-MAIL MATHEUS.SSILVA@BANDTEC.COM.BR
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  HAMBURGUER PIC 9(02) VALUE 3.
       01  PIZZA PIC 9(02) VALUE 30.
       01  SUSHI PIC 9(03) VALUE 300.
       01  MILK-SHAKE PIC 9(04) VALUE 3000.
       01  BOLACHA PIC 9(05) VALUE 30000.
       01  BOLACHA-1 PIC 9(05) VALUE 30000.

       PROCEDURE DIVISION.

      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                             DIVISAO                             *
      *                                                                 *
      *                                                                 *
      *    O COMANDO UTILIZADO E O DIVIDE. EXISTEM DOIS FORMATOS PARA   *
      *ESTE COMANDO:                                                    *
      *                                                                 *
      *                            FORMATO 1:                           *

           DIVIDE HAMBURGUER INTO PIZZA.
           DISPLAY PIZZA.
           DISPLAY " ".

      *    ESTE FORMATO DIVIDE A VARIAVEL PIZZA PELA VARIAVEL HAMBURGUER*
      *E O RESULTADO E MOVIDA PARA PIZZA. ASSIM COMO NA MULTIPLICACAO O *
      *RESULTADO DA DIVISAO FICA SEMPRE NO ULTIMO OPERANDO. EXEMPLO:    *

           DIVIDE 3 INTO SUSHI.
           DISPLAY SUSHI.
           DISPLAY " ".

      *                             FORMATO 2:                          *

           DIVIDE HAMBURGUER INTO MILK-SHAKE GIVING BOLACHA.
           DISPLAY BOLACHA.

      *    NESTE FORMATO O RESULTADO DA DIVISAO E COLOCADO EM PIZZA E OS*
      *VALORES DAS VARIAVEIS HAMBURGUER E MILK-SHAKE NAO SAO ALTERADOS. *
      *******************************************************************

       END PROGRAM DIVISAO.
