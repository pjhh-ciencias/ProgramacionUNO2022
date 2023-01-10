
SubProceso  imprimir_vector ( n, V )
	Definir i Como Entero;
	
	Escribir '[', Sin saltar;
	Para i<- 0 Hasta n-1 Hacer
		Escribir ' ', V(i),' ', Sin Saltar;
	FinPara
	Escribir ']';
FinSubProceso

Proceso Practica14_2
	Definir V,i,sum Como Entero;
	Dimension V(10);
	
	Para i<- 0 Hasta  9 Hacer
		V(i)<- Aleatorio(0,100);
	FinPara
	
	Escribir 'El vector es:';
	imprimir_vector(10,V);
	sum <- 0;
	Escribir 'Los elementos del vector en las posiciones pares son:', Sin saltar;
	Para i<- 0 Hasta  9 Hacer
		Si i Mod 2 =0 Entonces
			Escribir V(i), ' ', Sin Saltar;
			sum <- sum + V(i);
		FinSi
		
	FinPara
	
	Escribir '';
	Escribir 'La suma de estos elementos es: ', sum;	
FinProceso
