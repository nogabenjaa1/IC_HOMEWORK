Proceso largestnumber
    Definir numbers Como Real;
    Definir option, addmore Como Caracter;
    Definir iniqty, i Como Entero;
    Definir newnumber Como Real; 
    iniqty <- 3;
	
    Repetir
        Escribir "First 3 inputs.";
        Dimension numbers(iniqty);
        Para i <- 1 Hasta iniqty Hacer
            Escribir "Input ", i, ":";
            Leer numbers(i);
        FinPara
		
        addmore <- "y";
        Mientras addmore = "y"
            Escribir "¿Do you wanna add more inputs? (y/n):";
            Leer addmore;
            Si addmore = "y" Entonces
                Escribir "Extra input:";
                Leer newnumber;
				
                iniqty <- iniqty + 1;
                Redimension numbers(iniqty);
                numbers(iniqty) <- newnumber;
            FinSi
        FinMientras
		
        Definir largest Como Real;
        largest <- numbers(1);
        Para i <- 2 Hasta iniqty Hacer
            Si numbers(i) > largest Entonces
                largest <- numbers(i);
            FinSi
        FinPara
		
        Escribir "Largest: ", largest;
		
        Escribir "¿Do you wanna continue? (y/n):";
        Leer option;
		
    Hasta Que option <> "y"
FinProceso
