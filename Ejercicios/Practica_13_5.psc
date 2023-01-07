SubProceso  imprimir_vector ( n, V )
	Definir i Como Entero;
	
	Escribir '[', Sin saltar;
	Para i<- 0 Hasta n-1 Hacer
		Escribir ' ', V(i),' ', Sin Saltar;
	FinPara
	Escribir ']';
FinSubProceso

Proceso Practica_13_5
	Definir V Como Entero;
	Definir i,aux Como Entero;
	Dimension V(6);
	
	Para i<- 0 Hasta 5 Hacer
		Escribir 'Dame el elemento ', i+1, ' del vector';
		Leer V(i);
	FinPara
	
	imprimir_vector(6,V);
	
	Para i<- 0 Hasta Trunc(5/2) Hacer
		aux<- V(i);
		V(i) <- V(5-i);
		V(5-i)<- aux;
	FinPara
	
	Escribir 'El vector con elementos intercambiado es:';
	imprimir_vector(6,V);
	
	
FinProceso
