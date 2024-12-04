Proceso MayorDeNNumeros
    Definir numeros Como Real;
    Definir opcion, agregarMas Como Caracter;
    Definir cantidadInicial, i Como Entero;
    Definir nuevoNumero Como Real; // Declarar aquí las variables adicionales necesarias
    cantidadInicial <- 3;
	
    // Ciclo principal del programa
    Repetir
        // Iniciar el arreglo con 3 números iniciales
        Escribir "Ingrese los primeros 3 números:";
        Dimension numeros(cantidadInicial);
        Para i <- 1 Hasta cantidadInicial Hacer
            Escribir "Ingrese el número ", i, ":";
            Leer numeros(i);
        FinPara
		
        // Preguntar si desea agregar más números
        agregarMas <- "y";
        Mientras agregarMas = "y"
            Escribir "¿Desea agregar otro número? (y/n):";
            Leer agregarMas;
            Si agregarMas = "y" Entonces
                Escribir "Ingrese el nuevo número:";
                Leer nuevoNumero;
				
                // Expandir el arreglo manualmente
                cantidadInicial <- cantidadInicial + 1;
                Redimension numeros(cantidadInicial);
                numeros(cantidadInicial) <- nuevoNumero;
            FinSi
        FinMientras
		
        // Calcular el número mayor
        Definir mayor Como Real;
        mayor <- numeros(1);
        Para i <- 2 Hasta cantidadInicial Hacer
            Si numeros(i) > mayor Entonces
                mayor <- numeros(i);
            FinSi
        FinPara
		
        // Mostrar el resultado
        Escribir "El número mayor es: ", mayor;
		
        // Preguntar si desea ejecutar nuevamente
        Escribir "¿Desea ejecutar el programa nuevamente? (y/n):";
        Leer opcion;
		
    Hasta Que opcion <> "y"
FinProceso
