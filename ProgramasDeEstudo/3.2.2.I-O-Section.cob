       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENVIRONMENT-DIVISION.
       AUTHOR. LUIZ-GUSTAVO-SILVA.
       DATE-WRITTEN. 05-02-2021.
       REMARKS. NUM (11)983478156 / E-MAIL LUIZ.GSILVA@BANDTEC.COM.BR.
      *******************************************************************
      *INPUT-OUTPUT SECTION TEM COMO OBJETIVO CONFIGURAR ARQUIVOS QUE SE*
      *RAO USADOS NO PROGRAMA, POSSUINDO 2 PARAGRAFOS (FILE CONTROL E O *
      *I-O-CONTROL).
      *                                                                 *
      *  -> (FILE CONTROL) - ESSE PARAGRAFO SERVE PARA PARA ESPECIFICAR *
      *CADA UM DOS ARQUIVOS QUE O PROGRAMA USARA DE FORMA.              *
      *                                                                 *
      *NESTE PARAGRAFO SE E UTILIZADO UM SELECT PARA CADA ARQUIVO DESCRI*
      *TO. SEGUE ABAIXO A ESTRUTURA COMO E:                             *
      *                                                                 *
      *   - SELECT nome-do-arquivo ASSIGN TO dispositivo-do-computador. *
      *                                                                 *
      *SEGUE UM EXEMPLO:                                                *
      *                                                                 *
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT CLIENTES ASSIGN TO DA-S-CLIENTES.
      *                                                                 *
      *UMA VEZ DEFINIDO O NOME DO ARQUIVO, O MESMO NOME DEVERA SER USADO*
      *PELO ARQUIVO INTEIRO.                                            *
      *                                                                 *
      *O FORMATO DA CLAUSULA (dispositivo-do-computador) VARIA CONFORME *
      *O COMPUTADOR, MAS NO CASO DO MAINFRAME, SE UTILIZA NO FORMATO QUE*
      *FOI DADOS NO EXEMPLO, ONDE HÁ 3 SEGMENTOS SEPARADOS POR HIFENS, E*
      *PECIFICACAO DE CADA UM DELES ABAIXO:                             *
      *                                                                 *
      *   - TIPO DE DISPOSITIVO:                                        *
      *                                                                 *
      *   UR - PARA DISPOSITIVOS DE REGISTRO FIXO (IMPRESSORAS, CARTAO).*
      *   UT - PARA DISPOSITIVOS DE REGISTRO VARIAVEL (FITAS).          *
      *   DA - PARA DISPOSITIVOS DE ACESSO ALEATORIO (DISCOS).          *
      *                                                                 *
      *   - MODO DE ACESSO:                                             *
      *                                                                 *
      *    S - SEQUENCIAL.                                              *
      *    D - DIRETO (RANDOMICO).                                      *
      *    I - INDEXADO.                                                *
      *                                                                 *
      *NOME EXTERNO DO APLICATIVO - NOME PELO QUAL O OPERADOR DO COMPU- *
      *TADOR VAI ACHAR O ARQUIVO, ESTANDO NORMALMENTE ASSOCIADO AOS CO- *
      *MANDOS JLC NA EXECUCAO DO PROGRAMA.                              *
      *                                                                 *
      *PARA ARQUIVOS ABERTOS PARA LEITURA ( veja OPEN INPUT e OPEN I-O),*
      *PODE-SE ESPECIFICAR A CLAUSULA OPTIONAL NO SELECT. COM ESTA CLAU-*
      *SULA SE FORMOS ABIR UM APLICATIVO INEXISTENTE, ELE CRIA UM VAZIO.*
      *                                                                 *
      *EXEMPLO DE SINTAXE DO SELECT COM OPTIONAL:                       *
      *                                                                 *
      *    SELECT OPTIONAL nome-do-arquivo ASSIGN TO dispositivo.       *
      *                                                                 *
      *******************************************************************
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           DISPLAY "OLA :D"
           STOP RUN.
       END PROGRAM ENVIRONMENT-DIVISION.
