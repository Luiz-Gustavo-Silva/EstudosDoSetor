       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTINUE-IF.
       AUTHOR. LUIZ-GUSTAVO-SILVA.
       DATE-WRITTEN. 11-02-2021.
       REMARKS. NUM (11)983478156 / E-MAIL LUIZ.GSILVA@BANDTEC.COM.BR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  TEXTO PIC X(4).
       77  CAMPOA PIC 9(4) VALUE 10.
       77  CAMPOB PIC 9(4) VALUE 11.
       77  CAMPOC PIC 9(4).
       77  SIGLA PIC A(2) VALUE "SP".
       77  ERRO1 PIC 9(10) VALUE 0.
       77  SAI-ERRO1 PIC 9(10) VALUE 0.
       PROCEDURE DIVISION.
      *******************************************************************
      *                                                                 *
      *NAO EFETUA PROCESSAMENTO, SERVINDO SOMENTE PARA CONTEXTO.        *
      *                                                                 *
      *USADO EM GERAL QUANDO O TESTE SENDO EFETUADO NAO TEM UM PROCESSA-*
      *MENTO ESPECIFICO PARA A CONDICAO SATISFEITA. EXEMPLO:            *
      *                                                                 *
           MOVE SPACES TO TEXTO
           IF TEXTO EQUAL SPACES
               CONTINUE
           ELSE
               DISPLAY "NAO PASSA POR AQUI".
      *                        ---------//---------                     *
           IF CAMPOA GREATER THAN CAMPOB
               CONTINUE
           ELSE
              COMPUTE CAMPOC = CAMPOB - CAMPOA
           END-IF.
      *                        ---------//---------                     *
       TESTA-SIGLA-REGIAO-SUL.
           IF SIGLA = "PR" CONTINUE
           ELSE
               IF SIGLA = "SC" CONTINUE
               ELSE
                   IF SIGLA = "RS" CONTINUE
                   ELSE
                       DISPLAY "NAO PERTENCE AO SUL"
           EXIT.
      *                                                                 *
      *******************************************************************
       END PROGRAM CONTINUE-IF.
