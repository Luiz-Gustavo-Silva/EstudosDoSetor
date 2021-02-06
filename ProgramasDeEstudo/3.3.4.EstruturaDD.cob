       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTRUTURA-DATA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *******************************************************************
      *                                                                 *
      *                                                                 *
      *                       ESTRUTURA-DATA DIVISION                   *
      *                                                                 *
      *                                                                 *
      *    COMPOSTA POR QUATRO SECOES: FILE SECTION, WORKING-STORAGE    *
      *SECTION, REPORT SECTION, LINKAGE SECTION.                        *
      *    FILE SECTION: USADA PARA DEFINIR O LAYOUT DO REGISTRO DO AR- *
      *QUIVO. NESTA SECTION E NECESSARIO DEFINIR A ESTRUTURA DE CADA UM *
      *DOS ARQUIVOS. ISTO E FEITO ATRAVES DO FILE DESCRIPTION(FD).      *
      *    FILE DESCRIPTION:                                            *
      *    -NOME DO ARQUIVO                                             *
      *    -BLOCK CONTAINS (QUANTIDADE DE BLOCOS): ESPECIFICA O TAMANHO *
      *DO REGISTRO FISICO.                                              *
      *    -RECORD CONTAINS (TAMANHO DO REGISTRO LOGICO): ESPECIFICA O  *
      *TAMANHO DO REGISTRO LOGICO                                       *
      *    -RECORDING MODE (FORMATO DO ARQUIVO): ESPECIFICA O FORMATO DO*
      *ARQUIVO, ONDE PODE SE IDENTIFICAR COMO:                          *
      *    (F) - COMPRIMENTO FIXO                                       *
      *    (V) - COMPRIMENTO VARIAVEL                                   *
      *    (U) - INDEFINIDO                                             *
      *    (S) - ESTENDIDO (SPANNED).                                   *
      *    -LABEL RECORD (FORMATO DO LABEL): ESPECIFICA O FORMATO DO LA-*
      * BEL, ONDE PODE SE IDENTIFICAR COMO:                             *
      *    STANDARD - PADRAO                                            *
      *    OMITTED - OMITIDO                                            *
      *    QUANDO OMITIDO ASSUME "LABEL STANDARD".                      *
      *    E COMUMENTE USADO "OMITED" PARA IMPRESSORAS LEITORA DE CAR-  *
      *TOES E PERFURADORAS POIS ELAS NAO POSSUEM LABELS, NOS DEMAIS CA- *
      *SOS SE USA O "STANDARD".                                         *
      *    -DATA RECORD (NOME DO REGISTRO): SERVE APENAS COMO DOCUMENTA-*
      *CAO, IDENTIFICANDO REGISTROS DO ARQUIVO PELO NOME.               *
      *    CLAUSULA FILLER: USADA PARA UM ITEM QUE NAO SERA REFERENCIADO*
      *PODE SER USADO NA "DATA DIVISION" E SUAS "SECTIONS", EXEMPLO:    *


       01  REGISTRO.
           02 FILLER PIC X(100).


      *    CLAUSULA VALUE: USADA PARA DEFINIR UM VALOR INICIAL PARA UM  *
      *ITEM DA "WORKING-STORAGE SECTION". NAO PODE SER USADA NA "FILE   *
      *SECTION", EXEMPLO:                                               *


       01  CABEC01.
           02 FILLER PIC X(10) VALUE SPACES.
           02 FILLER PIC X(06) VALUE "FOLHAS".
           02 CB01-DATA PIC X(10) VALUE SPACES.


      *    WORKING-STORAGE SECTION: E USADA PARA DEFIINIR TODAS AS VA-  *
      *RIAVEIS NECESSARIAS PARA O FUNCIONAMENTO DO PROGRAMA. NAO HA PA- *
      *RAGRAFOS NESTA SECAO E OS DADOS PODEM SER DEFINIDOS COMO ITENS DE*
      *GRUPOS OU ELEMENTARES.                                           *
      *    LINKAGE SECTION: RECEBE PARAMETROS ENTRE DOIS PROGRAMAS      *
      *******************************************************************


       PROCEDURE DIVISION.

           DISPLAY REGISTRO
           DISPLAY " "

           DISPLAY CABEC01.

       END PROGRAM ESTRUTURA-DATA.
