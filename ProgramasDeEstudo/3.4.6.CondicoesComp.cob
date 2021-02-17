       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDICOES-COMPOSTAS.
       AUTHOR. MATHEUS-SANTOS-DA-SILVA.
       DATE-WRITTEN. 10-02-2021.
       REMARKS. NUM (11)975640903 / E-MAIL MATHEUS.SSILVA@BANDTEC.COM.BR
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  NOTA PIC 9(2) VALUE 7.
       77  FREQUENCIA PIC 9(2) VALUE 95.
       77  MENSAGEM PIC X(99).
       77  IDADE PIC 9(2) VALUE 15.
       77  ACOMPANHANTE PIC X(99) VALUE "SIM".
       77  MENSAGEM-2 PIC X(99).
       77  A PIC X(99).
       77  B PIC X(99).
       77  C PIC X(99).
       77  D PIC X(99).
       77  E PIC X(99).
       77  G PIC X(99).
       77  MENSAGEM-3 PIC X(99) VALUE "SOU DE VERDADE".
       PROCEDURE DIVISION.

      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                        CONDICOES COMPOSTAS                      *
      *                                                                 *
      *                                                                 *
      *    SAO TESTES DE CONDICOES LIGADAS COM AS CLAUSULAS AND OU OR   *
      *                                                                 *
      *      REGRAS:                                                    *
      *    AND - A CONDICAO RESULTANTE DE DUAS OU MAIS CONDICOES LIGADAS*
      *PELA CLAUSULA AND E VERDADEIRA SOMENTE SE TODAS AS CONDICOES COM-*
      *PONENTES FOREM VERDADEIRAS.                                      *
      *    OR - A CONDICAO RESULTANTE DE DUAS OU MAIS CONDICOES LIGADAS *
      *PELA CLAUSULA OR E VERDADEIRA SE PELO MENOS UMA DAS CONDICOES    *
      *COMPONENTES FOR VERDADEIRA. EXEMPLO:                             *

           IF NOTA GREATER 5 AND FREQUENCIA GREATER 80
               MOVE "ALUNO APROVADO" TO MENSAGEM
           END-IF.

           IF IDADE GREATER 18 OR ACOMPANHANTE GREATER ZEROS
               MOVE "ENTRADA PERMITIDA" TO MENSAGEM-2
           END-IF.

           DISPLAY MENSAGEM.
           DISPLAY MENSAGEM-2.

      *    QUANDO HOUVER NECESSIDADE DE SE USAR VARIOS TESTES DE CONDI- *
      *CAO E ACONSELHAVEL O USO DE PARENTESES PARA AGRUPAR AS CONDICOES.*
      *SEM O USO DELES AS CONDICOES SAO RESOLVIDAS DA ESQUERDA PARA DI- *
      *REITA, PRIMEIRO AS CONDICOES AND E DEPOIS AS CONDICOES OR, PODEN-*
      *DO ACARRETAR EM ERROS SE NAO FOREM AVALIADAS COM CUIDADO.        *
      *                                                                 *
      *    OBS: O COBOL RESOLVE PRIMEIRO AS EXPRESSOES DOS PARENTESES.  *
      *    EXEMPLO:                                                     *

           IF (A=B OR C=D) AND E=G
           IF A=B OR (C=D AND E=G)
               DISPLAY MENSAGEM-3.
       END PROGRAM CONDICOES-COMPOSTAS.
