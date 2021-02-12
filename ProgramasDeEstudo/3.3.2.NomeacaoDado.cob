       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOMEACAO-DADOS.
       AUTHOR. MATHEUS-SANTOS-DA-SILVA.
       DATE-WRITTEN. 06-02-2021.
       REMARKS. NUM (11)975640903 / E-MAIL MATHEUS.SSILVA@BANDTEC.COM.BR
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                       NOMEACAO DE UM DADO                       *
      *                                                                 *
      *                                                                 *
      *    QUALQUER PALAVRA DE NO MAXIMO 30 CARACTERES INCLUINDO LETRAS,*
      *NUMEROS E HIFEN, SENDO QUE É OBRIGATORIO TER PELO MENOS 1 LETRA  *
      *CASO NAO HAJA REFERENCIA DE UM PROGRAMA O NOME PODE SER OMITIDO, *
      *MAS NO COBOL É OBRIGATORIO. PENSANDO NISSO SE CRIOU A PALAVRA    *
      *FILLER QUE IDENTIFICA DADOS ANONIMOS.                            *


       01  FILLER PIC X(20) VALUE "NAO TEM NADA AQUI".


      *    FORMATO DO DADO: E ESPECIFICADO COM A PALAVRA PICTURE, MAS   *
      *PODE-SE ABREVIAR COM PIC. PIC E USADA PARA DESCRICAO DE INFORMA- *
      *COES SOBRE ITENS COMO:                                           *
      *  - TAMANHO                                                      *
      *  - SINAL                                                        *
      *  - TIPO(NUMERICO, ALFANUMERICO OU ALFABETICO)                   *
      *       TIPOS POSSIVEIS:                                          *
      *       ALFABETICO: REPRESENTADO POR LETRAS E PELO ESPAÇO. O CA-  *
      *RACTERE USADO E A LETRA "A", EXEMPLO:                            *


       77  ALFABETICO-01 PICTURE IS AAA VALUE"ABC".
       77  ALFABETICO-02 PIC IS AAA VALUE"DEF".
       77  ALFABETICO-03 PIC A(3) VALUE"GHI".


      *       ALFANUMERICO: REPRESENTADO POR LETRAS, NUMEROS E CARACTE- *
      *RES. O CARACTERE USADO E A LETRA "X". A REPRESENTACAO DE DADOS   *
      *NAO PODE EXCEDER A 120 CARACTERES, EXEMPLO:                      *


       01  ALFANUMERICO-01 PIC XXX VALUE"ANO".
       01  ALFANUMERICO-02 PIC X(04) VALUE"KKKK".
       01  ALFANUMERICO-03 PIC X(03) VALUE"Q1*".


      *       NUMERICO: REPRESENTA EXCLUSIVAMENTE ITENS NUMERICOS. OS   *
      *CARACTERES USADOS SAO: "9", "V", "P", "S".                       *
      *       "9": UTILIZADO PARA INDICAR UM DIGITO DE "0" A "9".       *
      *       "V": UTILIZADO PARA MOSTRAR A POSICAO DA VIRGULA DECIMAL  *
      *       "P": REPRESENTA O DIGITO ZERO (0)                         *
      *       "S": INDICA A PRESENCA DE SINAL, DEVE SER COLADO ANTES DO *
      *CARACTERE "9"                                                    *
      *    OBSERVACAO EM RELACAO AO "V": A MEMORIA NAO COMPUTA CASAS DE-*
      *CIMAIS, OU SEJA, A VIRGULA.PARA TAL E NECESSARIO SABER EM QUE PO-*
      *SICAO ESTAVA A VIRGULA QUE DESAPARECEU E COLOCA-LA NOVAMENTE COM *
      *O CARACTERE "V".                                                 *
      *                                                                 *
      *                                                                 *
       77  NUMERICO-01 PIC 9(05).
       77  NUMERICO-02 PIC 9(05)V9(04).
       77  NUMERICO-03 PIC 9(05)P.
       77  NUMERICO-04 PIC S9(05).
      *******************************************************************


       PROCEDURE DIVISION.

           DISPLAY ALFABETICO-01
           DISPLAY ALFABETICO-02
           DISPLAY ALFABETICO-03
           DISPLAY " "


           DISPLAY ALFANUMERICO-01
           DISPLAY ALFANUMERICO-02
           DISPLAY ALFANUMERICO-03
           DISPLAY " "


           DISPLAY NUMERICO-01
           DISPLAY NUMERICO-02
           DISPLAY NUMERICO-03
           DISPLAY NUMERICO-04.


       END PROGRAM NOMEACAO-DADOS.
