       IDENTIFICATION DIVISION.
       PROGRAM-ID. INITIALIZE-PROGRAM.
       AUTHOR. MATHEUS-SANTOS-DA-SILVA.
       DATE-WRITTEN. 17-02-2021.
       REMARKS. NUM (11)975640903 / E-MAIL MATHEUS.SSILVA@BANDTEC.COM.BR
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.


      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                            INITIALIZE                           *
      *                                                                 *
      *                                                                 *
      *    COM ESTE COMANDO É FEITA A INICIALIZAÇÃO DE UMA AREA DE TRA- *
      *BALHO, ONDE ELE TEM A FINALIDADE DE LIMPAR/INICIALIZAR UMA DETER-*
      *MINADA AREA DE TRABALHO OU UM ARQUIVO COM UM UNICO DADO PREVIA-  *
      *MENTE DETERMINADO, SEM TER QUE USARMOS O COMANDO MOVE, USANDO    *
      *APENAS O COMANDO INITIALIZE. EXEMPLO:                            *
      *                                                                 *
      *INITIALIZE AREA-TRABALHO                                         *
      *    REPLACING NUMERIC DATA BY 7                                  *
      *    DISPLAY 'TROCANDO OS CAMPO NUMERICOS POR 7 = ' AREA-TRABALHO.*
      *INITIALIZE AREA-TRABALHO                                         *
      *    REPLACING ALPHANUMERIC DATA BY '%'                           *
      *    DISPLAY 'TROCANDO OS CAMPO ALFA POR % = ' AREA-TRABALHO.     *
      *INITIALIZE AREA-TRABALHO                                         *
      *    DISPLAY 'LIMPANDO OS CAMPOS PELO DEFAULT = ' AREA-TRABALHO.  *
      *******************************************************************


       END PROGRAM INITIALIZE-PROGRAM.
