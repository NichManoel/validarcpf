UNIT BIBLIOTN;

interface //serve para criar as variáveis globais e indicar os módulos que fazem parte da UNIT

function potr(x,y:integer):real;
{pot eh uma funcao que devolve a potencia de x elevado a y, tipo real, aceita y negativo}

function poti(x,y:integer):integer;
{pot eh uma funcao que devolve a potencia de x elevado a y, tipo integer, NAO aceita y negativo}
function diamax(ano,mes:integer):integer;
{diamax eH uma funcao que a partir do ano e do mes como entrada, devolve o numero maximo de dias do mes
 exemplo ano=2020, mes=6->diamax=30 --  ano=2020, mes=2->diamax=29 (2020 eh ano bissesto)}

FUNCTION VALIDATA(DIA,MES,ANO:INTEGER):BOOLEAN;
{validata eH um funcao que a partir do di, mes e ano como entrada, verifica se a data de entrada e valida
 ou nao, devolve true se data ok ou false se data invalida
 exemplo 10 06 1995->validata=true -- 31 06 2000->validata=false (mes 6 so tem 30 dias) }

procedure leia1(OQUE:string[20];var int:integer);
{leia1 eH um procedimento que informa o que deve ser digitado (oque) e faz a leitura de informcoes do 
 teclado como caractere (max 20- - string[20]) e devolve o valor como inteiro (int) }

procedure cortela(n:integer);
{cortela eh um procedimento que altera a cor da tela (textbackground 
	0=PRETO, 1=AZUL, 2=VERDE, 3=CIANO, 4=VERMELHO, 5=MAGENTA, 6=MARROM, 7=CINZA CL'
  8=CINZA ES, 9=AZUL CL, 10=VERDE CL,11=CIANO CL, 12=VERMELHO CL, 13=MAGENTA CL, 14=AMARELO, 15= BRANCO' 
	VEJA - TEXTCOLOR(N:INTEGR)}

IMPLEMENTATION  //MODULOS FISICOS

function potr(x,y:integer):real;// x,y por valor, parametros formais
                                //o resultado da tarefa eh devolvido no nome da funcao
var neg,ex,a,pot:integer; //variaveis locais
 begin
  pot:=1;
	neg:=1;
	if(y<0)then
	 neg:=-1;
	ex:=y*neg;
	for a:= 1 to ex do
	 pot:=pot*x; 
	if(y<0)then
	 potr:=1/pot
	else
	 potr:=pot;
 end;
//===================================================================================================                                
function poti(x,y:integer):integer;// x,y por valor, parametros formais
                                   //o resultado da tarefa eh devolvido no nome da funcao
var pot,a:integer;//variável local
 begin
  pot:=1;
  if(y>0)then 
    for a:=1 to y do
     pot:=pot*x;
  poti:=pot;
 end;
//===================================================================================================
FUNCTION VALIDATA(DIA,MES,ANO:INTEGER):BOOLEAN;//dia,mes,ano passado por valor, parametros formais
                                               //o resultado da tarefa devolvido no nome da funcao
VAR  CHAVE:BOOLEAN;  // variavel local
BEGIN
 CHAVE:=TRUE;
 IF(ANO < 1900)THEN //VERIFICA O ANO (depende do usuario)
  CHAVE:=FALSE
 ELSE
  IF(MES < 1) OR (MES > 12)THEN //VERIFICA O MES
   CHAVE:=FALSE
  ELSE
   BEGIN //INICIO DA VERIFICACAO DO DIA
      IF(DIA < 1) OR (DIA > DIAMAX(ano,mes)) THEN //chama a funcao diamax
      CHAVE:= FALSE;
    END;
 VALIDATA:=CHAVE;
END;
//============================================================================================================================
function diamax(ano,mes:integer):integer; //ano,mes passados por valor, parametros formais 
                                          //o resultado da tarefa devolvido no nome da funcao
 begin
    DIAMAX:=31;  //PARA TODOS OS MESES
    IF(MES=4) OR (MES=6) OR (MES=9) OR (MES=11) THEN  //ALTERA 
     DIAMAX:=30;
    IF(MES=2)THEN // ALTERA
     BEGIN
      DIAMAX:=28;
      IF(ANO MOD 4 = 0)THEN //ALTERA
       DIAMAX:=29;
    end;
 end;
//===========================================================================================================================
 procedure leia1(OQUE:string[20];var int:integer);//OQUE PASSADO POR VALOR E INT POR REFERENCIA, PARAMETROS FORMAIS
                                                  //O RESULTADO DA TAREFA, DEVOLVIDO EM iNT
  var
	 dm:string[20];  //variavel local
	  e:integer;     //variavel local
  begin
	  repeat
     write(OQUE,'=>');
     readln(dm);
     val(dm,int,e);
     if(e>0)then
      writeln('ilegal');
    until (e=0);
  end;
//==========================================================================================================
procedure cortela(n:integer); //n passado por valor, parametro formal
 var a,b:integer; //vriaveis locais
 begin
  textbackground( n ); 
	CLRSCR;                              
	gotoxy(1,1);
 end;
END.