Program T5_NicholasManoelAntunesdePontes_1 ;
uses crt, BIBLIOTN;
var
	cpf, cpfs: string[11];
	vet: array[1..11] of integer;
	cont, cpfinteger, code, soma1, soma2, pt2dd1, pt2dd2: integer;	//parte dois do dígito 1 , parte dois do dígito 2.
begin
	cortela(13:integer); //Procedure do BIBLIOTN.
	textcolor(white); writeln('Digite o cpf para a validação.: ');
	readln (cpf);
	clrscr;
		begin
			for cont:= 1 to 11 do
				begin
					cpfs:= cpf[cont];
					val(cpfs, cpfinteger, code);
					vet[cont]:= cpfinteger;
				end;
			if (vet[1] = vet[2]) and (vet[2] = vet[3]) and (vet[3] = vet[4]) and (vet[4] = vet[5]) and (vet[5] = vet[6]) and (vet[6] = vet[7]) and (vet[7] = vet[8]) and (vet[8] = vet[9]) and (vet[9] = vet[10]) and (vet[10] = vet[11]) then
	 			begin
					writeln('CPF INVÁLIDO');
	 			end
			else
			soma1:= (vet[1]*10)+(vet[2]*9)+(vet[3]*8)+(vet[4]*7)+(vet[5]*6)+(vet[6]*5)+(vet[7]*4)+(vet[8]*3)+(vet[9]*2);
			pt2dd1:= (soma1 * 10) mod 11;
			if (pt2dd1= 10) then pt2dd1:= 0;
	
			soma2:= (vet[1]*11)+(vet[2]*10)+(vet[3]*9)+(vet[4]*8)+(vet[5]*7)+(vet[6]*6)+(vet[7]*5)+(vet[8]*4)+(vet[9]*3)+(pt2dd1*2);    
  		pt2dd2:= (soma2 * 10) mod 11;
  		if (pt2dd2= 10) then pt2dd2:= 0;
  		if (vet[10]= pt2dd1) and (vet[11] = pt2dd2) then
    		begin
     			writeLn('CPF VÁLIDO ', vet[1],vet[2],vet[3],'.',vet[4],vet[5],vet[6],'.',vet[7],vet[8],vet[9],'-',vet[10],vet[11]);
    		end
  		else
 				writeLn('CPF INVÁLIDO ', vet[1],vet[2],vet[3],'.',vet[4],vet[5],vet[6],'.',vet[7],vet[8],vet[9],'-',vet[10],vet[11]);
 		end;
 		readkey;
end.
	
	
	
	