       IDENTIFICATION DIVISION.
       PROGRAM-ID. RESOLUCAO-DE-FORMULAS.
       AUTHOR. MATHEUS-SANTOS-DA-SILVA.
       DATE-WRITTEN. 10-02-2021.
       REMARKS. NUM (11)975640903 / E-MAIL MATHEUS.SSILVA@BANDTEC.COM.BR
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  AMORA PIC 9(02).
       01  BANANA PIC 9(02) VALUE 8.
       01  CAJU PIC 9(02) VALUE 6.
       01  DAMASCO PIC 9(02) VALUE 4.
       01  FRAMBOESA PIC 9(02) VALUE 2.

       PROCEDURE DIVISION.

      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                       RESOLUCAO DE FORMULAS                     *
      *                                                                 *
      *                                                                 *
      *    O COMANDO COMPUTE E UTILIZADO PARA RESOLVER FORMULAS COMPLE- *
      *XAS. SINTAXE:                                                    *


           COMPUTE AMORA =((BANANA*2+CAJU**2)-DAMASCO)/FRAMBOESA.
           DISPLAY AMORA.


      *    NAS FORMULAS SE USA OS OPERANDOS:                            *
      *    + ADICIONAR                                                  *
      *    - SUBTRAIR                                                   *
      *    * MULTIPLICAR                                                *
      *    / DIVIDIR                                                    *
      *    ** EXPONIENCIACAO                                            *
      *    () PARENTESES                                                *
      *                                                                 *
      *    NA EXPONECIACAO COM EXPOENTES DECIMAIS (EXEMPLO: RAIZ SE FAZ *
      *COM **(.5)) NAO FUNCIONA EM TODOS OS SISTEMAS OPERACIONAIS.      *
      *******************************************************************
       END PROGRAM RESOLUCAO-DE-FORMULAS.
