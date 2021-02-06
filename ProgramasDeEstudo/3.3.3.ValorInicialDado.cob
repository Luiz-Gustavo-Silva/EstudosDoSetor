       IDENTIFICATION DIVISION.
       PROGRAM-ID. INICIAL-DADO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                      VALOR INICIAL DE UM DADO                   *
      *                                                                 *
      *                                                                 *
      *    ESTA CLAUSULA E OPCIONAL. ELA DA VALOR PARA UM ITEM QUANDO SE*
      *INICIA O PROGRAMA. CASO O ITEM NAO TENHA UM VALOR DECLARADO ESSE *
      *ITEM NO PROGRAMA IRA SE INICIAR COM VALORES IMPREVISIVEIS. CASO  *
      *SEJA NECESSARIO UM ITEM CONTER UMA TOTALIZACAO, E CONVENIENTE QUE*
      *ELE SEJA INICIALIZADO COM O VALOR ZERO.                          *
      *                                                                 *
      *    PARA OS DADOS NUMERICOS DEVE-SE DAR VALOR DESTE JEITO:       *

       77  VALOR-01 PIC 9(05) VALUE 12345.


      *SIGNIFICA QUE QUANDO O PROGRAMA INICIAR A VARIAVEL "VALOR-01" TE-*
      *RA O VALOR "12345".                                              *
      *    PARA DADOS ALFANUMERICOS DEVE-SE SER INSERIDA ENTRE ASPAS:   *


       77  VALOR-02 PIC X(30) VALUE 'UM VALOR ESCRITO, QUE LEGAL'.


      *QUANDO O PROGRAMA INCIAR A VARIAVEL "VALOR-02" CONTERA O VALOR   *
      *UM VALOR ESCRITO, QUE LEGAL. OS LITERAIS ALFANUMERICOS ACEITAM   *
      *NO MAXIMO 120 CARACTERES.                                        *
      *ALEM DESTES TAMBEM TEMOS AS CONSTANTES FIGURATIVAS, QUE SAO NOR- *
      *MALMENTE USADAS PARA FAZER BATIMENTO DE ARQUIVOS(COMPARACOES).   *
      *COMUMENTE USADAS SAO HIGH-VALUES E LOW-VALUES.                   *
      *    O HIGH-VALUES DETERMINA O MAIOR VALOR POSSIVEL ASSUMIDO PELA *
      *VARIAVEL. EM CONTRAPARTE O LOW-VALUES ASSUME O MENOR VALOR POSSI-*
      *VEL ASSUMIDO PELA VARIAVEL. MAS ELES SO PODEM SER UTILIZADOS EM  *
      *VARIAVEIS ALFANUMERICAS.                                         *
      *******************************************************************


       PROCEDURE DIVISION.

           DISPLAY VALOR-01
           DISPLAY VALOR-02.
       END PROGRAM INICIAL-DADO.
