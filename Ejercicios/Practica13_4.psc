SubProceso max <- max_vector (n,V)
	Definir max,i Como Entero;
	max <- V(0);
	Para i<-1 Hasta n-1 Hacer
		Si max < V(i)  Entonces
			max<- V(i);
		FinSi
	FinPara	
FinSubProceso

SubProceso  imprimir_vector ( n, V )
	Definir i Como Entero;
	
	Escribir '[', Sin saltar;
	Para i<- 0 Hasta n-1 Hacer
		Escribir ' ', V(i),' ', Sin Saltar;
	FinPara
	Escribir ']';
FinSubProceso

Algoritmo Practica13_4
	Definir Cal, Frec Como Entero;
	Definir i,j, max, f Como Entero;
	
	Dimension Cal(50);
	Dimension Frec(6);
	
	Para i<-0 Hasta 49 Hacer
		Cal(i)<- Aleatorio(0,5);
	FinPara
	
	Escribir 'El vector de calificaciones es:';
	imprimir_vector(50,Cal);
	
	
	Para i<- 0 Hasta 5  Hacer
		f<-0;
		Para j<-0 Hasta 49 Hacer
			Si Cal(j)=i Entonces
				f<- f+1;
			FinSi
		FinPara
		Frec(i)<- f;
	FinPara
	
	Escribir 'El vector de frecuencias es:';
	imprimir_vector(6,Frec);
	
	
	Escribir 'La frecuencia maxima es:', max_vector(6,Frec);
	
	i<-0;
	Mientras Frec(i)<> max_vector(6,Frec) Hacer
		i<- i+1;
	FinMientras
	
	
	Escribir 'La primer calificaciòn con la frecuencia màs alta es: ', i, Sin Saltar;
	Escribir 'con una frecuencia igual a: ', max_vector(6,Frec);
	

	
FinAlgoritmo
