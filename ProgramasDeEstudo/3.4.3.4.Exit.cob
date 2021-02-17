       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXIT-CONDICIONAL.
       AUTHOR. LUIZ-GUSTAVO-SILVA.
       DATE-WRITTEN. 11-02-2021.
       REMARKS. NUM (11)983478156 / E-MAIL LUIZ.GSILVA@BANDTEC.COM.BR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  NUMERO PIC 9 VALUE 1.
       PROCEDURE DIVISION.
      *******************************************************************
      *                                                                 *
      *EXIT SERVE PARA VOCE FINALIZAR UM PROCEDIMENTO (MAS COMO ASSIM UM*
      *PROCEDIMENTO? ESTAMOS NA PROCEDURE DIVISION, NELA PODEMOS CRIAR  *
      *ETAPAS DE PROCESSAMENTO), COMO NO EXEMPLO ABAIXO:                 *
      *                                                                 *
       NOME-PROCEDIMENTO.
           DISPLAY "SOU UM PROCEDIMENTO (QUASE QUE UMA FUNCTION NO JAVASCRIPT"
      -    " "
           " LOGO POSSO SEPARAR PROCESSOS DENTRO DO PROCEDURE DIVISION), PARTINDO"
      -    "DESSA INFORMACAO, O EXIT SERVE PARA ENCERRAR UM PROCEDIMENTO"
      -    " :D"
           EXIT.
      *                                                                 *
       OUTRO-PROCEDIMENTO.
           DISPLAY "NAO SOU AQUELE PROCEDIMENTO, SOU OUTRO!!!"
           EXIT.
      *                                                                 *
      *FICA BEM MAIS ORGANIZADO, CONTUDO ELE TAMBÉM TEM OUTRA FUNCAO QUE*
      *AGE COM O COMANDO PERFORM, ASSIM:                                *
      **
           PERFORM UNTIL NUMERO > 2
           DISPLAY "SEREI LIDO"
           MOVE 3 TO NUMERO
      *ATENTE-SE QUE O "END-PERFORM" VEM DEPOIS DO "EXIT PERFORM", LOGO *
      *O DISPLAY NAO FOI LIDO POR FICAR APÓS A FINALIZACAO DO PERFORM.  *
           EXIT PERFORM
           DISPLAY "ELE NAO VAI ME LER?"
           END-PERFORM.
      *                                                                 *
      *******************************************************************
       END PROGRAM EXIT-CONDICIONAL.
