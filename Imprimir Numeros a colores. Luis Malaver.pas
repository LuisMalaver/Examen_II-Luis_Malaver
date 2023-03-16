Program Imprimidor_de_numeros;
uses crt;
var 
Numero: Integer;
Opcion: string;

Procedure Divisible_Dos;
		Begin
		textcolor(Yellow);
					WriteLn('|==========================================|');
					WriteLn('|>>> Este numero es divisible entre Dos <<<|');
					WriteLn('|==========================================|');
					WriteLn('|>> El resultado es: ',Numero,'/2: ',Numero div 2,' <<|');
					WriteLn('|==========================================|');
end;



Procedure Divisible_Tres;
		Begin
		textcolor(blue);
					WriteLn('|===========================================|');
					WriteLn('|>>> Este numero es divisible entre Tres <<<|');
					WriteLn('|===========================================|');
					WriteLn('|>> El resultado es: ',Numero,'/3: ',Numero div 3,' <<|');
					WriteLn('|===========================================|');
end;



Procedure Divisible_Cinco;
		Begin
		textcolor(red);
					WriteLn('|============================================|');
					Writeln('|>>> Este numero es divisible entre Cinco <<<|');
					WriteLn('|============================================|');
					WriteLn('|>> El resultado es: ',Numero,'/5: ',Numero div 5,' <<|');			
					WriteLn('|============================================|');
end;



Procedure Divisible_Siete;
		Begin
		textcolor(Green);
					WriteLn('|============================================|');
					WriteLn('|>>> Este numero es divisible entre Siete <<<|');
					WriteLn('|============================================|');
					WriteLn('|>> El resultado es: ',Numero,'/7: ',Numero div 7,' <<|');
					WriteLn('|============================================|');
end;



Procedure Divisible_Trece;
		Begin
		textcolor(brown);
					WriteLn('|============================================|');
					WriteLn('|>>> Este numero es divisible entre Trece <<<|');
					WriteLn('|============================================|');
					WriteLn('|>> El resultado es: ',Numero,'/13: ',Numero div 13,' <<|');
					WriteLn('|============================================|');
end;



Begin
	repeat
	clrscr;
	textcolor(White);
					WriteLn('|---------------------------------------------|');
					WriteLn('|>>>> Bienvenido al Imprimidor de numeros <<<<|');
					WriteLn('|---------------------------------------------|');
					WriteLn('|Ingrese un numero para saber si es divisible |');
					WriteLn('|entre 2, 3, 5, 7 y 13.                       |');
					WriteLn('|---------------------------------------------|');
					Write('|Ingrese un numero: ');
							readln(Numero);
				if (Numero mod 2 = 0) then Divisible_Dos;
				if (Numero mod 3 = 0) then Divisible_Tres;
				if (Numero mod 5 = 0) then Divisible_Cinco;
				if (Numero mod 7 = 0) then Divisible_Siete;
				if (Numero mod 13 = 0) then Divisible_Trece;
	
				if (Numero mod 2 = 0) then writeln
				else if (Numero mod 3 = 0) then writeln
				else if (Numero mod 5 = 0) then writeln
				else if (Numero mod 7 = 0) then writeln
				else if (Numero mod 13 = 0) then writeln
				else Writeln('|>>> Este numero no es divisible entre: 2,3,5,7 y 13 <<<|');
					WriteLn;
					WriteLn('|==================================|');
					WriteLn('|Deseas interntarlo de nuevo? (s/n)|');
					WriteLn('|==================================|');
					Write('|---> ');
							Readln(Opcion);
	until (Opcion = 'n') or (Opcion = 'N');
End.
