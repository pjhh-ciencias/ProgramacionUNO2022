SubProceso  n <- cuenta_espacios ( C )
	Definir n,i como Entero;
	n<-0;
	Para  i<- 0 Hasta Longitud(C)-1 Hacer
		Si Subcadena(C,i,i)=' ' Entonces
			n <- n+1;
		FinSi
	FinPara
FinSubProceso

SubProceso  resul <- busca_caracter (ca,C )
	Definir i como Entero;Definir resul Como Logico;
	
	resul<- Falso;
	Para  i<- 0 Hasta Longitud(C)-1 Hacer
		Si Subcadena(C,i,i)=ca Entonces
			resul<- Verdadero;
			i<- Longitud(C);
		FinSi
	FinPara
FinSubProceso

SubProceso  genera_vector( n, V Por referencia, a,b )
	// n :dimension del vector
	// V :es el vector
	//(a,b) : rango en el que se genera el numero aleatorio
	Definir i Como Entero;
	Para i<- 0 Hasta n-1 Hacer
			V(i) <- Aleatorio(a,b);
	FinPara	
FinSubProceso

SubProceso  imprimir_vector ( n, V)
	//n : Dimension del vector
	// V :  vector
	Definir i Como Entero;
	Escribir '[', Sin saltar;
	Para i<- 0 Hasta n-1 Hacer
		Escribir ' ', V(i),' ', Sin Saltar;
	FinPara
	Escribir ']';
FinSubProceso

SubProceso ordena_creciente_vector ( n,V Por Referencia )
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

SubProceso max <- max_vector (n,V)
	Definir max,i Como Entero;
	max <- V(0);
	Para i<-1 Hasta n-1 Hacer
		Si max < V(i)  Entonces
			max<- V(i);
		FinSi
	FinPara	
FinSubProceso

SubProceso  leer_vector ( n ,V Por Referencia )
	Definir i Como Entero;
	Para i<- 0 Hasta n-1 Hacer
		Escribir 'Ingresa la entrada ', i, ' del vector:', Sin Saltar;
		Leer V(i);
	FinPara
FinSubProceso



Algoritmo sin_titulo
	Definir V,m,max Como Entero;
	Definir c, carac Como Caracter;
	Definir resultado Como Logico;
	Dimension V(10);
	
	//leer_vector(10,V);
	//genera_vector(10,V,-10,10);
//	Escribir 'El vector es: ', Sin Saltar ;
//	imprimir_vector(10,V);
//	ordena_creciente_vector(10,V);
//	Escribir 'El vector ordenado es:', Sin Saltar;
//	imprimir_vector(10,V);
//	max<-max_vector(10,V);
//	Escribir 'El elemento maximo del vector es:', max;
		
	//	
	Escribir 'Dame una cadena';
	Leer c;
	Escribir 'Ingresa el caracter que deseas buscar';
	Leer carac;
	resultado <- busca_caracter(carac, c);
	si resultado=falso Entonces
		Escribir 'El caracter ', carac, ' no se encuentra dentro de la cadena';
	Sino 
		Escribir 'El caracter ', carac, ' si se  encuentra dentro de la cadena';
	FinSi
	//	m<- cuenta_espacios(cad);
	//	Escribir 'La cadena que me diste, tiene: ', m, ' espacios';
	
	
FinAlgoritmo
