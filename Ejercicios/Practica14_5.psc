SubProceso  imprimir_vector ( n, V )
	Definir i Como Entero;
	
	Escribir '[', Sin saltar;
	Para i<- 0 Hasta n-1 Hacer
		Escribir ' ', V(i),' ', Sin Saltar;
	FinPara
	Escribir ']';
FinSubProceso

Algoritmo sin_titulo
	Definir V,i,j,n Como Entero;
	Definir centinela Como Logico;
	Dimension V(10);
	
	V(0)<- Aleatorio(0,100);
	i<-1;
	Mientras i<=9 Hacer
		n <- Aleatorio(0,100);
		centinela<- falso;
		Para j<- 0 Hasta i-1 Hacer
			Si V(j) = n Entonces
				centinela<- verdadero;
				j<- i;
			FinSi
		FinPara
		Si centinela=falso Entonces
			V(i)<- n;
			i<- i+1;
		FinSi
	FinMientras
	imprimir_vector(10,V);	
FinAlgoritmo
