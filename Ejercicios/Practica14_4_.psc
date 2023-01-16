SubProceso  imprimir_vector ( n, V )
	Definir i Como Entero;
	
	Escribir '[', Sin saltar;
	Para i<- 0 Hasta n-1 Hacer
		Escribir ' ', V(i),' ', Sin Saltar;
	FinPara
	Escribir ']';
FinSubProceso

Algoritmo sin_titulo
	Definir V,i,j Como Entero;
	Definir bandera Como Logico;
	
	Dimension V(10);
	
	
	Para i<- 0 Hasta  9 Hacer
		V(i)<- Aleatorio(0,100);
	FinPara
	
	imprimir_vector(10,V);
	
	Escribir 'Los elementos unicos del vector son: ';
	Escribir V(0), ' ', Sin Saltar;
	Para i<- 1 Hasta 9 Hacer
		bandera <- Falso;
		Para j<- 0 Hasta i-1 Hacer
			Si V(j) = V(i) Entonces
				bandera<- Verdadero;
				j<-i;
			FinSi
		FinPara
		Si bandera = falso Entonces
			Escribir V(i),' ', Sin Saltar;
		FinSi
	FinPara
	
	
	
	
FinAlgoritmo
