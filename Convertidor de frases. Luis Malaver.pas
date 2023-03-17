Program Convertidor;
Uses crt;
var
numb1,numb2,a,b,cod: integer;
frase,numoctal,numhexa,numromano:string;
Proceso,reset: string;
l: char;


procedure Repita;
	begin
		clrscr;
					writeln('|------------------| HOLA |-------------------|');
					writeln('|>>>> Bienvenido al convertidor de frases <<<<|');
					writeln('|---------------------------------------------|');
					writeln('|      Que conversion deseas realizar?        |');
					writeln('|---------------------------------------------|');
					writeln('|1) Frase a Numero Binario.                   |');
					writeln('|2) Frase a Numero Hexadecimal.               |');
					Writeln('|3) Frase a Numero Octal.                     |');
					writeln('|4) Frase a Numero Romano.                    |');
					writeln('|---------------------------------------------|');
					writeln('|Si desea salir del programa precione 5.      |');                      
					writeln('|---------------------------------------------|');
					writeln('|          >>>Ingresar un Numero<<<           |');
					Write('|---> ');
	end;
	
	
	
Procedure Frase_Binario;
	begin
			clrscr;
				    Writeln('|--------------------------------------------------------|');
					writeln('|>>> Has elegido convertir una frase a Numero Binario <<<|');
					Writeln('|--------------------------------------------------------|');
					writeln('|Por favor ingresa una frase:                            |');
					Write('---->: ');
						Readln(frase);
					Writeln('|  El numero binario es: ');
			for numb1:=1 to length (frase) do begin
			for numb2:=7 downto 0 do begin
			if (ord(frase[numb1])) and (1 shl numb2) <>0 then begin
					write('1');
end
			else          
	begin
					write('0');
end;
end; 
					write(' ');
end;
end;



Procedure Frase_Hexadecimal;
	begin
			clrscr;
				    Writeln('|------------------------------------------------------------|');
					writeln('|>>> Has elegido convertir una frase a Numero Hexadecimal <<<|');
					Writeln('|------------------------------------------------------------|');
					writeln('|Por favor ingresa una frase:                                |');
					Write('---->: ');
						Readln(frase);
					Writeln('|  El numero Hexadecimal es: ');
					
			for a := 1 to length(frase) do begin
    l := frase[a];
    cod := ord(l);
    numhexa := '';
			while cod > 0 do begin
			if (cod mod 16) < 10 then
        numhexa := chr((cod mod 16) + 48) + numhexa
			else
        numhexa := chr((cod mod 16) + 55) + numhexa;
		cod := cod div 16;
end;
			for b := 1 to (2 - length(numhexa)) do
					write('0');
					write(numhexa, ' ');
end;
end;



Procedure Frase_Octal;
	Begin
			clrscr;
					Writeln('|--------------------------------------------------------|');
					writeln('|>>>  Has elegido convertir una frase a Numero Octal  <<<|');
					Writeln('|--------------------------------------------------------|');
					writeln('|Por favor ingresa una frase:                            |');
					Write('---->: ');
						Readln(frase);
					Writeln('|  El numero Octal es: ');
			for a := 1 to length(frase) do begin
    l := frase[a];
    cod := ord(l);
    numoctal := '';
    
			while cod > 0 do begin
    numoctal := chr((cod mod 8) + 48) + numoctal;
    cod := cod div 8;
end;
    
			for b := 1 to (3 - length(numoctal)) do
					write('0');
					write(numoctal, ' ');
end;
end;




Procedure Frase_Romano;
	begin
			clrscr;
				    Writeln('|-------------------------------------------------------|');
					writeln('|>>> Has elegido convertir una frase a Numero Romano <<<|');
					Writeln('|-------------------------------------------------------|');
					writeln('|Por favor ingresa una frase:                           |');
					Write('---->: ');
						Readln(frase);
					Writeln('|  El numero Romano es: ');
			for a := 1 to length(frase) do begin
    l := frase[a];
    cod := ord(l);
    numromano := '';
    
			while cod >= 1000 do begin
    numromano := numromano + 'M';
    cod := cod - 1000;
end;
    
			if cod >= 900 then begin
    numromano := numromano + 'CM';
    cod := cod - 900;
end
			else if cod >= 500 then begin
    numromano := numromano + 'D';
    cod := cod - 500;
end;
			while cod >= 100 do begin
    numromano := numromano + 'C';
    cod := cod - 100;
end;
			if cod >= 90 then begin
    numromano := numromano + 'XC';
    cod := cod - 90;
end
			else if cod >= 50 then begin
    numromano := numromano + 'L';
    cod := cod - 50;
end;
			while cod >= 10 do begin
    numromano := numromano + 'X';
    cod := cod - 10;
end;
			if cod >= 9 then begin
    numromano := numromano + 'IX';
    cod := cod - 9;
end
			else if cod >= 5 then begin
    numromano := numromano + 'V';
    cod := cod - 5;
end;
			while cod >= 1 do begin
    numromano := numromano + 'I';
    cod := cod - 1;
end;
					write(numromano, ' ');
  end;
end;


begin
		repeat
		Repita;
							readln(Proceso);
				while (Proceso <> '1') and (Proceso <> '2') and (Proceso <> '3') and (Proceso <> '4') and (Proceso <> '5')do
		begin
						WriteLn('|==================================================================|');
						WriteLn('|Por favor ingrese una de las opciones que se muestra en pantalla: |'); 
						WriteLn('|==================================================================|');
						Write('--->: ');
							readln(Proceso);
end;
						WriteLn;
				if Proceso = '1' then Frase_Binario;
				If Proceso = '2' then Frase_Hexadecimal;
				If Proceso = '3' then Frase_Octal;
				If Proceso = '4' then Frase_Romano;
						WriteLn; 
						WriteLn;
						WriteLn('|===========|',' Ya te vas? :(',' |============|');
						WriteLn('|>>> Desea seguir convirtiendo? (s/n) <<<|');
						WriteLn('|========================================|');
							Readln(reset);
				until (reset = 'n') or (reset = 'N');
end.
