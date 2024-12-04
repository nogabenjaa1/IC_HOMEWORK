Proceso LargestNumberInArray
    Definir size Como Entero;
    Definir numbers Como Entero;
    Definir largest Como Entero;
    size <- readArraySize;
	
    Dimension numbers(size);
    generateRandomArray(size, numbers);
	
    Escribir "Success: Array generated.";
    Para i <- 1 Hasta size Hacer
        Escribir "Value ", i, ": ", numbers(i);
    FinPara
	
    largest <- findLargestNumber(size, numbers);
    Escribir "Largest Value: ", largest;
FinProceso

Funcion size <- readArraySize
    Definir size Como Entero;
    Escribir "Input Size:";
    Leer size;
FinFuncion

Subproceso generateRandomArray(size, array)
    Definir i Como Entero;
    
    Para i <- 1 Hasta size Hacer
        array(i) <- Aleatorio(1, 100); 
    FinPara
FinSubproceso

Funcion largest <- findLargestNumber(size, array)
    Definir largest, i Como Entero;
    largest <- array(1);
	
    Para i <- 2 Hasta size Hacer
        Si array(i) > largest Entonces
            largest <- array(i);
        FinSi
    FinPara
FinFuncion
