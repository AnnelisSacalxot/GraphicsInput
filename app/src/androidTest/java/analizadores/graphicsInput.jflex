/*primera sección: código usuario*/

package analizadores;
/import java_cup.runtime.*;

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

//reservadas

DEF =  "def"|"Def"
BARRAS = "Barras"
 PIE = "Pie"
TITULO = "titulo"
EJEX = "ejex"
EJEY = "ejey"
ETIQUETAS = "etiquetas" 
VALORES = "valores"
UNIR = "unir"
TIPO  = "tipo"
TOTAL = "total"
EXTRA = "extra"
EJECUTAR = "Ejecutar"

//tokens

ENTERO = [(0-9)+((.)(0-9)+)*]
LETRA = [a-zA-Z]+
COMA = ","
DOSPUNTOS = ":"
PUNTOCOMA = ";"
COMENTARIO = [#(a-zA-Z|0-9)*]+
ESPACIO = [ , \n, \t, \r]+
//CADENA  \"[^"]*\"

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

/*tercera sección: reglas léxicas*/
%%

{DEF}											{ System.out.printf("\nDEF (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{BARRAS}										{ System.out.printf("\nBARRAS   (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{PIE }									                 { System.out.printf("\nPIE  (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{TITULO }										{ System.out.printf("\nTITULO  (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{EJEX}											{ System.out.printf("\nEJEX (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{EJEY}											{ System.out.printf("\nEJEY (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{ETIQUETAS }									{ System.out.printf("\nETIQUETAS  (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{VALORES}										{ System.out.printf("\nVALORES (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{UNIR}											{ System.out.printf("\nUNIR (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{TIPO}											{ System.out.printf("\nTIPO (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{TOTAL }										{ System.out.printf("\nTOTAL  (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{EXTRA}										{ System.out.printf("\nEXTRA (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  
{EJECUTAR }									{ System.out.printf("\nEJECUTAR  (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }  

{ENTERO}										{ System.out.printf("\nENTERO (%s), ", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{LETRA}									         { System.out.printf("\nLETRA (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn);}
{COMA}											{ System.out.printf("\nCOMA (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{DOSPUNTOS}									{ System.out.printf("\nDOSPUNTOS (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn);}
{PUNTOCOMA}									{ System.out.printf("\nPUNTOCOMA(%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn);}
{COMENTARIO}									{ System.out.printf("\nCOMENTARIO(%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }	
{ESPACIO}										{/*Se ignoran*/}

{MAS}											{ System.out.printf("\nMAS(%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn);}//System.out.printf("mas: %s \n", yytext()); return symbol(MAS, 
//yytext()); }
{RESTA}										{ System.out.printf("\nRESTA (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{MULTIPLICACION}								{ System.out.printf("\nMULTIPLICACION (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{DIVISION}										{ System.out.printf("\nDIVISION (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn);  }

{PARENTESISABRE}								{ System.out.printf("\nPARENTESISABRE (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn);}
{PARENTESISCIERRA}							{ System.out.printf("\nPARENTESISCIERRA (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{LLAVEABRE}									{ System.out.printf("\nLLAVEABRE (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{LLAVECIERRA}									{ System.out.printf("\nLLAVECIERRA (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{CORCHETEABRE}								{ System.out.printf("\nCORCHETEABRE (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{CORCHETECIERRA}								{ System.out.printf("\nCORCHETECIERRA (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }

[^]                             									{}
