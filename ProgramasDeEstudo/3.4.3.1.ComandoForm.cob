       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMANDO-FORMATO.
       AUTHOR. LUIZ-GUSTAVO-SILVA.
       DATE-WRITTEN. 09/02/2021.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-VALOR PIC 9(4) VALUE 50.
       77  WRK-SAIDA PIC 9(4).
       PROCEDURE DIVISION.
      *******************************************************************
      *                                                                 *
      *EXISTEM 2 MODOS DE FAZER UM COMANDO CONDICIONAL, SEGUE OS EXEM-  *
      *PLOS:                                                            *
      *                                                                 *
      *  -> FORMATO 1:                                                  *
      *                                                                 *
      *    IF CONDICAO 1                                                *
      *       INSTRUCAO 1                                               *
      *       INSTRUCAO 2                                               *
      *    END-IF.                                                      *
      *                                                                 *
      *NESTE FORMATO SE A CONDICAO 1 FOR VERDADEIRA, FARA AS 2 INSTRUCO-*
      *ES, MAS SE FOR FALSA, IRA DIRETO AO END-IF QUE FINALIZARA O CO-  *
      *MANDO CONDICIONAL E O PROGRAMA VOLTARÁ A SE EXUCUTAR APARTIR DO  *
      *PONTO (.).                                                       *
      *                                                                 *
      *BOAS PRATICAS: DAR UM RECUO NAS INSTRUCOES PARA UM MELHOR ENTEN- *
      *DIMENTO DO PROGRAMA FONTE -//- PROCURAR ESCREVER UMA INSTRUCAO   *
      *POR LINHA -//- UM PONTO FINAL INDICA O FIM DAS INSTRUCOES INFLU- *
      *ENCIADAS POR UMA CONDICAO.                                       *
      *                                                                 *
      *EXEMPLOS:                                                        *
      *                                                                 *
           IF WRK-VALOR IS GREATER THAN 100
           DISPLAY "O VALOR É MUITO ALTO"
           MOVE ZEROS TO WRK-VALOR
           END-IF.
           MOVE WRK-VALOR TO WRK-SAIDA.
      *                                                                 *
      *NESTE EXEMPLO A VARIAVEL "WRK-SAIDA" SERA FORMATADA COM O VALOR  *
      *50, JA QUE O WRK-VALOR NAO TEM UM VALOR MAIOR QUE 100.           *
      *                                                                 *
      *OBS: SE O PONTO FINAL VIESSE APÓS O DISPLAY, ELE SEMPRE MOVERIA O*
      *WRK-VALOR INDEPENDENTE DA SITUACAO, JA NESTE EXEMPLO A VARIAVEL  *
      *TERA COMO VALOR O NUMERO 0.                                      *
      *                                                                 *
      *  -> FORMATO 2:                                                  *
      *                                                                 *
      *    IF CONDICAO 1                                                *
      *       INSTRUCOES 1                                              *
      *    ELSE                                                         *
      *       INSTRUCOES 2                                              *
      *    END-IF.                                                      *
      *       INSTRUCOES 3 (O RESTO DO PROGRAMA)                        *
      *                                                                 *
      *SEGUINDO ESSE FORMATO, QUANDO A CONDICAO UM FOR VERDADEIRA IRA SE*
      *EXECUTAR SOMENTE A INSTRUCAO 1, SENAO, VAI EXECUTAR OBRIGATORIA- *
      *MENTE A INSTRUCAO 2.                                             *
      *                                                                 *
      *LEMBRANDO QUE AS INSTRUCOES 3 SEMPRE SERAO EXECUTADAS (POR NAO   *
      *ESTAR DENTRO DO IF). SEGUE UM PROGRAMA EXEMPLO:                  *
      *                                                                 *
           IF WRK-VALOR IS GREATER THAN 100
               DISPLAY "O VALOR É MUITO ALTO"
               MOVE ZEROS TO WRK-VALOR
           ELSE
               DISPLAY "VALOR ESTA IDEAL"
           END-IF.
           MOVE WRK-VALOR TO WRK-SAIDA.
      *                                                                 *
      *OBS: CASO COLOQUE O ELSE DEPOIS DE ALGUM PONTO FINAL, VAI DAR ER-*
      *RRO DE SINTAXE, ENTAO POR FAVOR NAO ESQUECA DE NAO COLOCAR (.) NO*
      *MEIO DA INSTRUCAO DO IF.                                         *
      *                                                                 *
      *******************************************************************
       END PROGRAM COMANDO-FORMATO.
