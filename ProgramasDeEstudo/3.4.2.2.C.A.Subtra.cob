       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBTRACAO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  FEIJAO PIC 9(02) VALUE 25.
       01  ARROZ PIC 9(03) VALUE 50.
       01  MACARRAO PIC 9(03) VALUE 150.
       01  BIFE PIC 9(03) VALUE 200.

       01  FEIJAO-1 PIC 9(02) VALUE 25.
       01  ARROZ-1 PIC 9(03) VALUE 50.
       01  MACARRAO-1 PIC 9(03) VALUE 150.
       01  BIFE-1 PIC 9(03) VALUE 200.

       PROCEDURE DIVISION.
      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                           SUBTRACAO                             *
      *                                                                 *
      *                                                                 *
      *    REALIZADA COM O COMANDO SUBTRACT. DE MANEIRA ANALOGA AO ADD, *
      *HA DOIS FORMATOS BASICOS:                                        *
      *                                                                 *
      *                           FORMATO 1:                            *


           SUBTRACT FEIJAO ARROZ FROM MACARRAO BIFE.
           DISPLAY MACARRAO.
           DISPLAY BIFE.
           DISPLAY " ".


      *    NESTE FORMATO, A SOMA DOS VALORES DAS VARIAVEIS FEIJAO E AR- *
      *ROZ SAO SUBTRAIDOS AOS VALORES JA EXISTENTES NAS VARIAVEIS MACAR-*
      *RAO E BIFE.                                                      *
      *                                                                 *
      *                            FORMATO 2:                           *


           SUBTRACT FEIJAO-1 ARROZ-1 FROM MACARRAO-1 GIVING BIFE-1.
           DISPLAY BIFE-1.


      *    NESTE FORMATO A SOMA DOS VALORES DE FEIJAO-1 E ARROZ-1 SAO   *
      *SUBTRAIDOS DE MACARRAO-1, E O RESULTADO E COLOCADO EM BIFE-1. OS *
      *VALORES DE FEIJAO-1, ARROZ-1 E MACARRAO-1 NAO SAO ALTERADOS, EN- *
      *QUANTO BIFE-1 E ZERADO PARA RECEBER O RESULTADO, MESMO SE JA TI- *
      *VESSE ALGUM VALOR ANTERIOR.                                      *
      *******************************************************************


       END PROGRAM SUBTRACAO.
