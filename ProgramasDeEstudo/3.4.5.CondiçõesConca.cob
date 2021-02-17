       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDICOES-CONCATENADAS.
       AUTHOR. MATHEUS-SANTOS-DA-SILVA.
       DATE-WRITTEN. 10-02-2021.
       REMARKS. NUM (11)975640903 / E-MAIL MATHEUS.SSILVA@BANDTEC.COM.BR
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  DEBITO PIC 9(2) VALUE 10.
       77  CREDITO PIC 9(2) VALUE 8.
       77  ANO PIC 9(4) VALUE 2003.
       77  MENSAGEM PIC X(99).
       PROCEDURE DIVISION.


      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                      CONDICOES CONCATENADAS                     *
      *                                                                 *
      *                                                                 *
      *    AS CONDICOES CONCATENADAS ACONTECEM QUANDO NO LUGAR DAS INS- *
      *TRUCOES SUBORDINADAS COLOCA-SE UM SEGUNDO TESTE CONDICAO, ORIGI- *
      *NANDO UMA CADEIA DE TESTES QUE SAO SUBORDINADOS UM AO OUTRO.EXEM-*
      *PLO:                                                             *

           IF DEBITO GREATER CREDITO
           IF ANO NOT LESS 2004
               MOVE 'DEBITO OK' TO MENSAGEM
           ELSE
               MOVE 'CONTA EM ATRASO' TO MENSAGEM
               END-IF
           ELSE
               MOVE  'CONTA SEM DEBITO' TO MENSAGEM
               END-IF.
           DISPLAY MENSAGEM.

      *    O FLUXOGRAMA QUE REPRESENTA A CONDICAO ACIMA E:              *
      *                                                                 *
      *                                                                 ********
      *             0                                                          *
      *             |                                                          *
      *             |                                                          *
      *             V                                                          *
      *    +------------------+    S    +-------------+    S    +-----------+  *
      *    | DEBITO > CREDITO |-------->| ANO >= 2004 |-------->| DEBITO OK |  *
      *    +------------------+         +-------------+         +-----------+  *
      *             |                           |                       |      *
      *             |                           |                       |      *
      *             | N                         | N                     |      *
      *             |                           |                       |      *
      *             |                           |                       |      *
      *             V                           V                       |      *
      *    +------------------+         +----------------+              |      *
      *    | CONTA SEM DEBITO |         | CONTA EM ATRASO|              |      *
      *    +------------------+         +----------------+              |      *
      *             |                            |                      |      *
      *             |                            |                      |      *
      *             |                            V                      V      *
      *             +-------------------------------------------------->0      *
      *                                                                        *
      *                                                                 ********
      *                                                                 *
      *******************************************************************
       END PROGRAM CONDICOES-CONCATENADAS.
