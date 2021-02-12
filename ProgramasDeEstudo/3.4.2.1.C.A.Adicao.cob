       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADICAO.
       AUTHOR. MATHEUS-SANTOS-DA-SILVA.
       DATE-WRITTEN. 09-02-2021.
       REMARKS. NUM (11)975640903 / E-MAIL MATHEUS.SSILVA@BANDTEC.COM.BR
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  BANANA PIC 9(2) VALUE 5.
       01  MACA PIC 9(2) VALUE 10.
       01  MORANGO PIC 9(2) VALUE 15.
       01  ABACAXI PIC 9(2) VALUE 20.

       01  BANANA-1 PIC 9(2) VALUE 5.
       01  MACA-1 PIC 9(2) VALUE 10.
       01  MORANGO-1 PIC 9(2) VALUE 15.
       01  ABACAXI-1 PIC 9(2) VALUE 20.

       PROCEDURE DIVISION.


      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                              ADICAO                             *
      *                                                                 *
      *                                                                 *
      *    PARA SOMAR VALORES UTILIZAMOS ADD, UTILIZANDO-SE EM 2 FORMA- *
      *TOS DIFERENTES:                                                  *
      *                                                                 *
      *                            FORMATO 1:                           *


           ADD BANANA MACA TO MORANGO ABACAXI.
           DISPLAY MORANGO.
           DISPLAY ABACAXI.
           DISPLAY " ".


      *    NESSE FORMATO, A SOMA DE BANANA E MACA SAO ACRESCIDOS AOS VA-*
      *LORES JA EXISTENTES NAS VARIAVEIS MORANGO E ABACAXI.             *
      *    AS VARIAVEIS BANANA E MACA (OU SEJA AS PRIMEIRAS VARIAVEIS), *
      *PODEM SER LITERAIS NUMERICAS. JA AS VARIAVEIS MORANGO E ABACAXI  *
      *(OU SEJA AS ULTIMAS VARIAVEIS) SO PODERAO SER VARIAVEIS NUMERICAS*
      *E SERAO ELAS QUE RECEBERAO O VALOR ACUMULADO.                    *
      *                                                                 *
      *                             FORMATO 2:                          *


           ADD BANANA-1 MACA-1 GIVING MORANGO-1 ABACAXI-1.
           ADD BANANA-1 MACA-1 MORANGO-1 GIVING ABACAXI-1.
           DISPLAY MORANGO-1.
           DISPLAY ABACAXI-1.


      *    NESTE FORMATO A SOMA DOS VALORES, BANANA-1 E MACA-1 NAO SAO  *
      *ACUMULADOS NA VARIAVEL ABACAXI-1. A TOTAL E ZERADA ANTES DE RECE-*
      *BER A SOMA, PERDENDO ASSIM O VALOR ACUMULADO NO PASSADO.         *
      *******************************************************************
       END PROGRAM ADICAO.
