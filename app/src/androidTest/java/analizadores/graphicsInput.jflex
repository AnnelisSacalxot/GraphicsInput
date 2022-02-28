/*primera sección: código usuario*/

package analizadores;
//import java_cup.runtime.*;

/*segunda sección: configuración*/
%%

%class GraphicsInput
%unicode
%line
%column
//%cup
%standalone //crea un main en jflex
%public

%{

//errores

//private void error(String lexeme){
//	System.out.printf ("Error léxico en la entrada: %s linea %d, columna %d" lexeme, yyline+1, yycolumn+1);
//	errorList.add(String.format("Error léxico en la entrada: %s linea %d, columna %d. Intenta de nuevo:"lexeme, yyline+1, yycolumn+1));
//}

//public list<String> getErrorsList(){
//	return errorsList;
//}

%}
//%init{
//	errorsList = new ArrayLIst<>() ;
//%init}

//tokens
ENTERO = [0-9]
LETRA = [a-zA-Z]
COMA = ","
DOSPUNTOS = ":"
PUNTOCOMA = ";"
COMENTARIO = "#"
ESPACIO = [ , \n, \t, \r]+

//operadores aritmeticos
MAS = "+"
RESTA = "-"
MULTIPLICACION = "*"
DIVISION = "/"

//apertura y cierre de cadenas
PARENTESISABRE = "("
PARENTESISCIERRA = ")"
LLAVEABRE = "{"
LLAVECIERRA = "}"
CORCHETEABRE = "["
CORCHETECIERRA = "]"

//reservadas

DEF =  "def"|"Def"

//Expresiones regulares armadas para poder identificar cadenas

//IDENTIFICADOR 
//LINEA_COMENTARIO
//CADENA  \"[^"]*\"

/*tercera sección: reglas léxicas*/
%%

{ENTERO}										{ System.out.printf("\nENTERO (%s)", yytext()); }
{LETRA}									         { System.out.printf("\nLETRA (%s)", yytext()); }
{COMA}											{ System.out.printf("\nCOMA (%s)", yytext()); }
{DOSPUNTOS}									{ System.out.printf("\nDOSPUNTOS (%s)", yytext()); }
{PUNTOCOMA}									{ System.out.printf("\nPUNTOCOMA(%s)", yytext()); }
{COMENTARIO}									{ System.out.printf("\nCOMENTARIO(%s)", yytext()); }	
{ESPACIO}										{/*Se ignoran*/}

{MAS}											{ System.out.printf("\nMAS(%s)", yytext()); }//System.out.printf("mas: %s \n", yytext()); return symbol(MAS, 
//yytext()); }
{RESTA}										{ System.out.printf("\nRESTA (%s)", yytext()); }
{MULTIPLICACION}								{ System.out.printf("\nMULTIPLICACION (%s)", yytext()); }
{DIVISION}										{ System.out.printf("\nDIVISION (%s)", yytext()); }

{PARENTESISABRE}								{ System.out.printf("\nPARENTESISABRE (%s)", yytext()); }
{PARENTESISCIERRA}							{ System.out.printf("\nPARENTESISCIERRA (%s)", yytext()); }
{LLAVEABRE}									{ System.out.printf("\nLLAVEABRE (%s)", yytext()); }
{LLAVECIERRA}									{ System.out.printf("\nLLAVECIERRA (%s)", yytext()); }
{CORCHETEABRE}								{ System.out.printf("\nCORCHETEABRE (%s)", yytext()); }
{CORCHETECIERRA}								{ System.out.printf("\nCORCHETECIERRA (%s)", yytext()); }

{DEF}											{ System.out.printf("\nDEF (%s)", yytext()); }  

[^]                             									{}
