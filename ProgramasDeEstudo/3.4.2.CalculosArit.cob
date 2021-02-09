       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULOS-ARITMETICOS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  QUANTIDADE PIC 99V99 VALUE 35.12.
       01  ENTRADA PIC 99V9 VALUE 12.5.
       01  SALDO PIC 9999.

       PROCEDURE DIVISION.


      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                       CALCULOS ARITMETICOS                      *
      *                                                                 *
      *                                                                 *
      *    AS INSTRUCOES PARA EFETUAR CALCULOS ARITMETICOS SAO: ADD,    *
      *SUBTRACT, MULTIPLY, DIVIDE E COMPUTE. QUANDO O CALCULO ENVOLVER  *
      *DECIMAIS, O RESULTADO SE ADAPTA A VARIAVEL DE RESULTADO, OCASIO- *
      *NANDO EM UM TRUNCAMENTO, OU EM SURGIMENTO DE ZEROS ADICIONAIS NA *
      *PARTE DECIMAL DO RESULTADO, EXEMPLO:                             *


           ADD QUANTIDADE TO ENTRADA GIVING SALDO.
           DISPLAY SALDO.


      *    O VALOR SERA DE 47, POIS ELE NAO PREVE O USO DE CASAS DECI-  *
      *MAIS.                                                            *
      *                                                                 *
      *                        PARAMETROS OPCIONAIS                     *
      *                                                                 *
      *    ROUNDED-USADO SOMENTE QUANDO OS OPERANDOS NAO FOREM NUMEROS  *
      *INTEIROS. COM O ROUNDED E FEITO UM ARREDONDAMENTO DO RESULDO (VA-*
      *LORES MENORES QUE .5 SAO TRUNCADOS, E OS MAIORES SAO ARREDONDADOS*
      * PARA CIMA), FAZENDO ASSIM COM QUE AS CASAS DECIMAIS NAO SEJAM   *
      *PERDIDAS.                                                        *
      *    ON SIZE ERROR-USADO PARA OS CASOS QUE HOUVER ESTOURO DO CAMPO*
      *RECEPTOR. PODE-SE COLOCAR NESSA INSTRUCAO UMA MENSAGEM DE ERRO,  *
      *PARA O PROGRAMA PARAR, OU DESVIAR PARA ALGUM OUTRO PARAGRAFO ES- *
      *PECIAL DE TRATAMENTO DESSE ERRO, EXEMPLO:                        *
      *    REMAINDER-USADO APENAS NA DIVISAO. SUA FUNCAO E CARREGAR O   *
      *RESTO DA DIVISAO EM ALGUMA VARIAVEL EXISTENTE.                   *


           ADD QUANTIDADE TO ENTRADA GIVING SALDO
           ON SIZE ERROR
           DISPLAY "ESTOUROU O CAMPO DE RESULTADO".
           DISPLAY SALDO.
      *******************************************************************
       END PROGRAM CALCULOS-ARITMETICOS.
