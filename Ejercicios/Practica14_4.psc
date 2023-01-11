SubProceso ordena_vector ( n,V Por Referencia ) 
	Definir  aux,i,j Como Entero;
	Para i<- 0 Hasta n-1 Hacer
		Para j<- 0 hasta ((n-1) -1-i) Hacer
			Si V(j)> v(j+1) Entonces
				aux <- V(j+1);
				V(j+1)<- V(j);
				V(j)<- aux;
			FinSi
		FinPara
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

Algoritmo Practica14_4
	Definir V, i Como Entero;
	Dimension V(10);
	
	Para i<- 0 Hasta  9 Hacer
		V(i)<- Aleatorio(0,100);
	FinPara
	
	Escribir 'El vector generado es: ';
	imprimir_vector(10,V);
	
	ordena_vector(10,V);
	
	Escribir 'El vector ordenado de forma creciente es: ';
	imprimir_vector(10,V);
	
FinAlgoritmo
