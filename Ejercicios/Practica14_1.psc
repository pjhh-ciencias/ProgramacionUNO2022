SubProceso  imprimir_vector ( n, V )
	Definir i Como Entero;
	
	Escribir '[', Sin saltar;
	Para i<- 0 Hasta n-1 Hacer
		Escribir ' ', V(i),' ', Sin Saltar;
	FinPara
	Escribir ']';
FinSubProceso


Algoritmo Practica14_1
	Definir V, VA Como Enteros;
	Definir i,n Como Entero;
	Definir bandera Como Logico;
	Dimension V(10);
	Dimension VA(10);
	
	Para i<- 0 Hasta  9 Hacer
		V(i)<- Aleatorio(0,100);
	FinPara
	
	Para i<- 0 Hasta  9 Hacer
		VA(i)<- 0;
	FinPara
	
	Escribir 'El vector V es:';
	imprimir_vector(10,V);
	
	Escribir 'El vector auxiliar VA es:';
	imprimir_vector(10,VA);

	
	Repetir
		Escribir 'Ingresa un numero entre 0 y 100';
		Leer n;
	Hasta Que n>=0 Y n<=100
	
	bandera <- Falso;
	Para i<- 0 Hasta  9 Hacer
		Si V(i)=n Entonces
			VA(i) <- 1;
			bandera <- Verdadero;
		FinSi
	FinPara
	
	Escribir 'El vector auxiliar VA MODIFICADO  es:';
	imprimir_vector(10,VA);
	
	Si bandera = Verdadero Entonces
		Escribir 'El numero ', n, 'si se encuentra en el vector V';
		Escribir 'Y se encuentra en las posiciones:', Sin Saltar;
		
		Para i<- 0 Hasta  9 Hacer
			Si VA(i)=1 Entonces
				Escribir i,',  ', Sin Saltar;
			FinSi
		FinPara
	SiNo
		Escribir 'El numero ', n, 'NO se encuentra en el vector V :(';
		
	FinSi
	
	
	
	
	
	
	
	
FinAlgoritmo
