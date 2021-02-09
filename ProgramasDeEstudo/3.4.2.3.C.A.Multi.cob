       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLICACAO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  JUJUBA PIC 9(02) VALUE 5.
       01  FINI PIC 9(02) VALUE 3.
       01  URSINHO PIC 9(02) VALUE 7.
       01  BALINHA PIC 9(02) VALUE 9.

       01  JUJUBA-1 PIC 9(02) VALUE 5.
       01  FINI-1 PIC 9(02) VALUE 3.
       01  URSINHO-1 PIC 9(02) VALUE 7.


       PROCEDURE DIVISION.
      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                          MULTIPLICACAO                          *
      *                                                                 *
      *                                                                 *
      *    O COMANDO UTILIZADO PARA ESSA OPERACAO E O MULTIPLY, ASSIM   *
      *COMO NOS ANTERIORES TAMBEM SE ESTABELECE EM DOIS FORMATOS.       *
      *                                                                 *
      *                            FORMATO 1:                           *

           MULTIPLY JUJUBA BY FINI URSINHO.
           DISPLAY URSINHO.
           DISPLAY FINI.
           DISPLAY " ".

      *    ESTE FORMATO MULTIPLICA JUJUBA, POR FINI E URSINHO, COM O RE-*
      *SULTADO FICANDO EM FINI E URSINHO.                               *
      *                                                                 *
      *   *-----------------------------------------------------------* *
      *   |                                                           | *
      *   |                          IMPORTANTE                       | *
      *   |                                                           | *
      *   |   NA MULTIPLICACAO E DIVISAO, O RESULTADO FICA SEMPRE NO  | *
      *   |ULTIMO OPERANDO. NESSE EXEMPLO FICARIA NO FINI E NO URSINHO| *
      *   |                                                           | *
      *   *-----------------------------------------------------------* *
      *                                                                 *
      *    ASSIM SE QUISERMOS MULTIPLICAR A VARIAVEL BALINHA POR 3 DEVE-*
      *MOS EXECUTAR A INSTRUCAO:                                        *

           MULTIPLY 3 BY BALINHA.
           DISPLAY BALINHA.
           DISPLAY " ".

      *    COMO CONSEQUENCIA DA REGRA DO RESULTADO, O ULTIMO OPERANDO DA*
      *MULTIPLICACAO DEVE SER SEMPRE UMA VARIAVEL.                      *
      *                                                                 *
      *                              FORMATO 2:                         *

           MULTIPLY JUJUBA-1 BY FINI-1 GIVING URSINHO-1.
           DISPLAY URSINHO-1.

      *    NESTE FORMATO O RESULTADO DA MULTIPLICACAO E COLOCADO EM UR- *
      *SINHO-1, LOGO OS VALORES JUJUBA-1 E FINI-1 NAO SAO ALTERADOS.    *
      *******************************************************************

       END PROGRAM MULTIPLICACAO.
