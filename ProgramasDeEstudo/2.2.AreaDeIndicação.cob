       IDENTIFICATION DIVISION.
       PROGRAM-ID. AREA-INDICACAO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      *******************************************************************
      *A AREA DE INFICACAO (COLUNA 7) TEM ALGUMAS FUNCOES, SENDO ELAS:  *
      *                                                                 *
      *  -> (-) HIFEM, INDICA QUE ESTA TENDO NESTA LINHA UMA CONTINUACAO*
      *DO TEXTO DA LINHA SUPERIOR, SEGUE-SE O EXEMPLO:                  *
      *                                                                 *
           DISPLAY "OLA ME CHAMO LUIZ GUSTAVO DA SILVA TENHO 18 ANOS E M"
      -    "ORO EM MAUA".
      *                                                                 *
      *  -> (*) ASTERISCO, INDICA QUE ESTA TENDO UM COMENTARIO NESTA LI-*
      *NHA, SEGUE-SE O EXEMPLO:                                         *
      *                                                                 *
      *                    AQUI ESTA MEU COMENTARIO                     *
      *                                                                 *
      *  -> (/) BARRA, INDICA QUE NESTA LINHA SERA UM COMENTARIO E LOGO *
      *APOS A EXECUCAO DESSA LINHA, IRA SE PULAR A PAGINA, SEGUE O EXEM-*
      *PLO:                                                             *
      *                                                                 *
      /       TESTANDO O NOVO COMENTARIO, UMA PENA QUE NAO APARECEREI   /
      *                                                                 *
      *******************************************************************
       END PROGRAM AREA-INDICACAO.
