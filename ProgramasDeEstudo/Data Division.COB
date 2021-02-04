       IDENTIFICATION DIVISION.
       PROGRAM-ID. AREA-DE-DADOS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *******************************************************************
      *OS DADOS SAO DEFINIDOS NA DATA-DIVISION. MAS PARA UM DADO SER    *
      *FEITO SAO NECESSARIAS ESPECIFICACOES.                            *
      *                                                                 *
      *                    ESPECIFICACOES DOS DADOS                     *
      *                                                                 *
      *    NIVEL: DEFINE A HIERARQUIA DOS DADOS COM NUMEROS DE 01 A 99. *
      *ESTA HIERARQUIA SERIA COMO UMA CELULA PAI E SUAS CELULAS FILHOS. *
      *TODA HIERARQUIA DEVE-SE INICIAR COM O 01 E A CELULA PAI NAO DEVE *
      *SER DEFINIDA COM A CLAUSULA PICTURE. CADA SUBORDINADO DEVE TER O *
      *MESMO NUMERO DE ACORDO COM O PRIMEIRO SUBORDINADO DE SUA HIERAR- *
      *QUIA.                                                            *
      *    EXEMPLO:                                                     *


       01  ENDERECO.
           03 RUA PIC X(9) VALUE "MANACA".
           03 BAIRRO PIC X(9) VALUE "PRIMAVERA".


      *OS NUMEROS DE 50 A 99 TEM USO ESPECIFICO. MAS NO MAINFRAME SE    *
      *USA:                                                             *
      *    NIVEL 77-DADO INDEPENDENTE                                   *
      *    NIVEL 88-NOMES CONDICIONAIS                                  *-REVER ESSA PARTE
      *SOMENTE OS NÍVEIS 01 E 77 PODEM SER CODIFICADOS NA AREA A.       *
      *    EXEMPLOS:                                                    *


       77  NOME PIC X(9) VALUE "LUIZIM".


      *    NOMEACAO DE UM DADO: QUALQUER PALAVRA DE NO MAXIMO 30 CARAC- *
      *TERES-INCLUINDO LETRAS, NUMEROS E HIFEN, SENDO QUE É OBRIGATORIO *
      *TER PELO MENOS 1 LETRA.                                          *
      *CASO NAO HAJA REFERENCIA DE UM PROGRAMA O NOME PODE SER OMITIDO, *
      *MAS NO COBOL É OBRIGATORIO. PENSANDO NISSO SE CRIOU A PALAVRA    *
      *FILLER QUE IDENTIFICA DADOS ANONIMOS.                            *-REVER ESSA PARTE


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

       77  NUMERICO-01 PIC 9(05).
       77  NUMERICO-02 PIC 9(05)V9(04).
       77  NUMERICO-03 PIC 9(05)P.
       77  NUMERICO-04 PIC S9(05).


      *    VALOR INICIAL DE UM DADO: ESTA CLAUSULA E OPCIONAL. ELA DA   *
      *VALOR PARA UM ITEM QUANDO SE INICIA O PROGRAMA. CASO O ITEM NAO  *
      *TENHA UM VALOR DECLARADO ESSE ITEM NO PROGRAMA IRA SE INICIAR COM*
      *VALORES IMPREVISIVEIS. CASO SEJA NECESSARIO UM ITEM CONTER UMA   *
      *TOTALIZACAO, E CONVENIENTE QUE ELE SEJA INICIALIZADO COM O VALOR *
      *ZERO.                                                            *
      *    PARA OS DADOS NUMERICOS DEVE-SE DAR VALOR DESTE JEITO:       *

       77  VALOR-01 PIC 9(05) VALUE 12345.


      *SIGNIFICA QUE QUANDO O PROGRAMA INICIAR A VARIAVEL "VALOR-01" TE-*
      *RA O VALOR "12345".                                              *
      *    PARA DADOS ALFANUMERICOS DEVE-SE SER INSERIDA ENTRE ASPAS:   *


       77  VALOR-02 PIC X(30) VALUE 'UM VALOR ESCRITO, QUE LEGAL'.


      *QUANDO O PROGRAMA INCIAR A VARIAVEL "VALOR-02" CONTERA O VALOR   *
      *UM VALOR ESCRITO, QUE LEGAL. OS LITERAIS ALFANUMERICOS ACEITAM   *
      *NO MAXIMO 120 CARACTERES.                                        *
      *ALEM DESTES TAMBEM TEMOS AS CONSTANTES FIGURATIVAS, QUE SAO NOR- *
      *MALMENTE USADAS PARA FAZER BATIMENTO DE ARQUIVOS(COMPARACOES).   *
      *COMUMENTE USADAS SAO HIGH-VALUES E LOW-VALUES.                   *
      *    O HIGH-VALUES DETERMINA O MAIOR VALOR POSSIVEL ASSUMIDO PELA *
      *VARIAVEL. EM CONTRAPARTE O LOW-VALUES ASSUME O MENOR VALOR POSSI-*
      *VEL ASSUMIDO PELA VARIAVEL. MAS ELES SO PODEM SER UTILIZADOS EM  *
      *VARIAVEIS ALFANUMERICAS.                                         *-REVER ESSA PARTE
      *                                                                 *
      *                                                                 *
      *                       ESTRUTURA-DATA DIVISION                   *
      *                                                                 *
      *    COMPOSTA POR QUATRO SECOES: FILE SECTION, WORKING-STORAGE    *
      *SECTION, REPORT SECTION, LINKAGE SECTION.                        *
      *    FILE SECTION: USADA PARA DEFINIR O LAYOUT DO REGISTRO DO AR- *
      *QUIVO. NESTA SECTION E NECESSARIO DEFINIR A ESTRUTURA DE CADA UM *
      *DOS ARQUIVOS. ISTO E FEITO ATRAVES DO FILE DESCRIPTION(FD).      *
      *    FILE DESCRIPTION:                                            *-REVER ESSA PARTE
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
      *CAO, IDENTIFICANDO REGISTROS DO ARQUIVO PELO NOME.               *-REVER ESSA PARTE
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


           DISPLAY ENDERECO
           DISPLAY " "


           DISPLAY NOME
           DISPLAY " "


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
           DISPLAY NUMERICO-04
           DISPLAY " "


           DISPLAY VALOR-01
           DISPLAY " "


           DISPLAY REGISTRO
           DISPLAY " "


           DISPLAY CABEC01
           DISPLAY " ".


       END PROGRAM AREA-DE-DADOS.
