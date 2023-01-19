SubProceso  producto_matrices ( f,c, d , A,B, P Por Referencia )
	// f = # de filas de A
	// c= # de columnas de A que es igual a # numero de filas de B
	// d = # de columnas de B
	Definir  i,j,k,sum Como Entero;
	
	Para i<- 0 Hasta f-1 Hacer
		Para j<- 0 Hasta d-1 Hacer
			sum<-0;
			Para k<- 0 Hasta c-1 Hacer
				sum <- sum + A(i,k)*B(k,j);
			FinPara
			P(i,j)<- sum;			
		FinPara
	FinPara	
	
	
FinSubProceso

SubProceso  genera_matriz( f,c, M Por referencia )
	Definir i,j Como Entero;
	Para i<- 0 Hasta f-1 Hacer
		Para j<- 0 Hasta c-1 Hacer
			M(i,j) <- Aleatorio(0,2);
		FinPara
	FinPara	
FinSubProceso


SubProceso  imprime_matriz( f,c, M )
	Definir i,j Como Entero;
	Para i<- 0 Hasta f-1 Hacer
		Escribir '|   ', Sin Saltar;
		Para j<- 0 Hasta c-1 Hacer
			Escribir M(i,j), '    ', Sin Saltar;
		FinPara
		Escribir '|';
	FinPara	
FinSubProceso
Proceso Practica15_3
	Definir A,B,P Como Entero;
	Dimension A(3,3);Dimension B(3,3); Dimension P(3,3);
	
	genera_matriz(3,3,A);
	Escribir 'La matriz A es:';
	imprime_matriz(3,3,A);
	genera_matriz(3,3,B);	
	Escribir 'La matriz B es:';
	imprime_matriz(3,3,B);
	
	producto_matrices(3,3,3,A,B,P);
	Escribir 'El producto de las matrices es:';
	imprime_matriz(3,3,P);
	
FinProceso
