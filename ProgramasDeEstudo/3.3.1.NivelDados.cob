       IDENTIFICATION DIVISION.
       PROGRAM-ID. AREA-DE-DADOS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *******************************************************************
      *OS DADOS SAO DEFINIDOS NA DATA-DIVISION. MAS PARA UM DADO SER    *
      *FEITO SAO NECESSARIAS ESPECIFICACOES.                            *
      *                                                                 *
      *                    ESPECIFICACOES DOS DADOS                     *
      *                                                                 *
      *    NIVEL: DEFINE A HIERARQUIA DOS DADOS COM NUMEROS DE 01 A 99. *
      *ESTA HIERARQUIA SERIA COMO UMA CELULA PAI E SUAS CELULAS FILHOS. *
      *TODA HIERARQUIA DEVE-SE INICIAR COM O 01 E A CELULA PAI NAO DEVE *
      *SER DEFINIDA COM A CLAUSULA PICTURE. CADA SUBORDINADO DEVE TER O *
      *MESMO NUMERO DE ACORDO COM O PRIMEIRO SUBORDINADO DE SUA HIERAR- *
      *QUIA.                                                            *
      *    EXEMPLO:                                                     *


       01  ENDERECO.
           03 RUA PIC X(9) VALUE "MANACA".
           03 BAIRRO PIC X(9) VALUE "PRIMAVERA".


      *OS NUMEROS DE 50 A 99 TEM USO ESPECIFICO. MAS NO MAINFRAME SE    *
      *USA:                                                             *
      *    NIVEL 77-DADO INDEPENDENTE                                   *
      *    NIVEL 88-NOMES CONDICIONAIS                                  *
      *SOMENTE OS NÍVEIS 01 E 77 PODEM SER CODIFICADOS NA AREA A.       *
      *    EXEMPLOS:                                                    *
      *                                                                 *
      *                                                                 *
       77  NOME PIC X(9) VALUE "LUIZIM".
      *******************************************************************


       PROCEDURE DIVISION.


           DISPLAY ENDERECO
           DISPLAY " "

           DISPLAY NOME.

       END PROGRAM AREA-DE-DADOS.
