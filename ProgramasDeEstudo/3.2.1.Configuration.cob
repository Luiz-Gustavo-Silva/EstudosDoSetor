       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENVIRONMENT-DIVISION.
       AUTHOR. LUIZ-GUSTAVO-SILVA.
       DATE-WRITTEN. 05-02-2021.
       REMARKS. NUM (11)983478156 / E-MAIL LUIZ.GSILVA@BANDTEC.COM.BR.
       ENVIRONMENT DIVISION.
      *******************************************************************
      *CONFIGURATION SECTION E UMA SECAO QUE BUSCA DAR UMA DESCRICAO GE-*
      *DO AMBIENTE DO COMPUTADOR, POSSUI 3 PARAGRAFOS, SOURCE-COMPUTER, *
      *OBJECT-COMPUTER E SPECIAL-NAMES. SEGUE UM DETALHAMENTO DELES.    *
      *                                                                 *
      *  -> (SOURCE-COMPUTER) - IDENTIFICA O COMPUTADOR ONDE FOI CONFEC-*
      *CIONADO O PROGRAMA (OPCIONAL).                                   *
      *                                                                 *
      *   - SOURCE-COMPUTER. ACER.                                      *
      *   - SOURCE-COMPUTER. ACER WITH DEBUGGING MODE.                  *
      *                                                                 *
      *  -> (OBJECT-COMPUTER) - IDENTIFICA O COMPUTADOR DO AMBIENTE DE  *
      *PRODUCAO (TAMBEM OPCIONAL).                                      *
      *                                                                 *
      *   - OBJECT-COMPUTER. ACER.                                      *
      *                                                                 *
      *  -> (SPECIAL-NAMES) - SERVE PARA ESPECIFICAR ALGUNS ALFABETOS   *
      *(COMO DECIMAL POR EXEMPLO), POR MEIO DE ALGUNS COMANDOS, CONTUDO *
      *TODOS OS COMANDOS DAQUI SAO OPCIONAIS. SEGUE-SE O EXEMPLO DA CASA*
      *DECIMAL.                                                         *
      *                                                                 *
      *   - SPECIAL-NAMES.                                              *
      *        DECIMAL-POINT       IS COMMA                             *
      *                                                                 *
      *******************************************************************
       CONFIGURATION SECTION.
      * SE COLOCAR O WITH DEBUGGING MODE, A FRASE EM DISPLAY APARECERA. *
       SOURCE-COMPUTER. ACER.                                           WITH DEBUGGING MODE
       OBJECT-COMPUTER.
       SPECIAL-NAMES.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       I-O-CONTROL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      D    DISPLAY "ESTOU ESCONDIDO, SO APARECO WITH DEBUGGING MODE :)"
           STOP RUN.
       END PROGRAM ENVIRONMENT-DIVISION.
