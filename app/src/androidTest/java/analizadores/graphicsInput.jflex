/*primera sección: código usuario*/

package analizadores;
import java_cup.runtime.Symbol;

/*segunda sección: configuración*/
%%

%class GraphicsInput
%unicode
%line
%column
%cup
%type java_cup.runtime.Symbol
%full
%standalone //crea un main en jflex
%public

%{
	private Symbol symbol(int type, Object value){
		return new Symbol(type, yyline, yycolumn, value);
	}

		private Symbol symbol(int type){
		return new Symbol(type, yyline, yycolumn);
	}

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
COMILLAS = """

/*tercera sección: reglas léxicas*/
%%

{DEF}											{ return new Symbol(sym.DEF, yyline + 1, yycolumn + 1, yytext()); }
{BARRAS}										{ return new Symbol(sym.BARRAS, yyline + 1, yycolumn + 1, yytext()); }
{PIE }									        { return new Symbol(sym.PIE, yyline + 1, yycolumn + 1, yytext()); }
{TITULO }										{ return new Symbol(sym.TITULO, yyline + 1, yycolumn + 1, yytext());  }
{EJEX}											{ return new Symbol(sym.EJEX, yyline + 1, yycolumn + 1, yytext());  }
{EJEY}											{ return new Symbol(sym.EJEY, yyline + 1, yycolumn + 1, yytext()); }
{ETIQUETAS }									{ return new Symbol(sym.ETIQUETAS, yyline + 1, yycolumn + 1, yytext()); }
{VALORES}										{ return new Symbol(sym.VALORES, yyline + 1, yycolumn + 1, yytext()); }
{UNIR}											{ return new Symbol(sym.UNIR, yyline + 1, yycolumn + 1, yytext()); }
{TIPO}											{ return new Symbol(sym.TIPO, yyline + 1, yycolumn + 1, yytext()); }
{TOTAL }										{ return new Symbol(sym.TOTAL, yyline + 1, yycolumn + 1, yytext()); }
{EXTRA}										    { return new Symbol(sym.EXTRA, yyline + 1, yycolumn + 1, yytext()); }
{EJECUTAR }									    { return new Symbol(sym.EJECUTAR, yyline + 1, yycolumn + 1, yytext()); }

{ENTERO}										{ return new Symbol(sym.ENTERO, yyline + 1, yycolumn + 1, yytext()); }
{LETRA}									        { return new Symbol(sym.LETRA, yyline + 1, yycolumn + 1, yytext()); }
{COMA}											{ return new Symbol(sym.COMA, yyline + 1, yycolumn + 1, yytext()); }
{DOSPUNTOS}									    { return new Symbol(sym.DOSPUNTOS, yyline + 1, yycolumn + 1, yytext()); }
{PUNTOCOMA}									    { return new Symbol(sym.PUNTOCOMA, yyline + 1, yycolumn + 1, yytext()); }
{COMENTARIO}									{ return new Symbol(sym.COMENTARIO, yyline + 1, yycolumn + 1, yytext()); }
{ESPACIO}										{/*Se ignoran*/}

{MAS}											{ return new Symbol(sym.MAS, yyline + 1, yycolumn + 1, yytext()); }//System.out.printf("mas: %s \n", yytext()); return symbol(MAS,
//yytext()); }
{RESTA}										    { return new Symbol(sym.RESTA, yyline + 1, yycolumn + 1, yytext()); }
{MULTIPLICACION}								{ return new Symbol(sym.MULTIPLICACION, yyline + 1, yycolumn + 1, yytext()); }
{DIVISION}										{ return new Symbol(sym.DIVISION, yyline + 1, yycolumn + 1, yytext());  }

{PARENTESISABRE}								{ return new Symbol(sym.PARENTESISABRE, yyline + 1, yycolumn + 1, yytext()); }
{PARENTESISCIERRA}							    { return new Symbol(sym.PARENTESISCIERRA, yyline + 1, yycolumn + 1, yytext()); }
{LLAVEABRE}									    { return new Symbol(sym.LLAVEABRE, yyline + 1, yycolumn + 1, yytext()); }
{LLAVECIERRA}									{ return new Symbol(sym.LLAVECIERRA, yyline + 1, yycolumn + 1, yytext()); }
{CORCHETEABRE}								    { return new Symbol(sym.CORCHETEABRE, yyline + 1, yycolumn + 1, yytext()); }
{CORCHETECIERRA}								{ return new Symbol(sym.CORCHETECIERRA, yyline + 1, yycolumn + 1, yytext()); }
{COMILLAS}										{ return new Symbol(sym.COMILLAS, yyline + 1, yycolumn + 1, yytext()); }

[^]                             									{}