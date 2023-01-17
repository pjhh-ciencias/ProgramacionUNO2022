SubProceso  genera_matriz( f,c, M Por referencia )
	Definir i,j Como Entero;
	Para i<- 0 Hasta f-1 Hacer
		Para j<- 0 Hasta c-1 Hacer
			M(i,j) <- Aleatorio(0,9);
		FinPara
	FinPara	
FinSubProceso


SubProceso  imprime_matriz( c,f, M )
	Definir i,j Como Entero;
	Para i<- 0 Hasta f-1 Hacer
		Escribir '|   ', Sin Saltar;
		Para j<- 0 Hasta c-1 Hacer
			Escribir M(i,j), '    ', Sin Saltar;
		FinPara
		Escribir '|';
	FinPara	
FinSubProceso



Algoritmo Practica15_1
	Definir M,MT Como Entero;
	Definir i,j Como Entero;
	Dimension M(3,3);Dimension MT(3,3);
	
	genera_matriz(3,3,M);
	imprime_matriz(3,3,M);
	
	Para i<- 0 Hasta 2 Hacer
		Para j<- 0 Hasta 2 Hacer
			MT(i,j)<- M(j,i);
		FinPara
	FinPara
	
	Escribir 'La matriz transpuesta es:';
	imprime_matriz(3,3,MT);	
		
FinAlgoritmo
