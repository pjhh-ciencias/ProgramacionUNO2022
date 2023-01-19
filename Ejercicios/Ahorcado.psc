Funcion l <- check ( letra,n,V)
	Definir l Como Logico; Definir i Como Entero;
	l<-falso;
	Para i<- 1 Hasta n Hacer
		Si Minusculas(V(i)) = Minusculas(letra) Entonces
			l<- Verdadero;
			i<- n+1;
		FinSi
	FinPara
Fin Funcion

Funcion imprimir_vector ( n,V )
	Definir i Como Entero;	
	Para i<- 1 Hasta n Hacer
		Escribir ' ', V(i),' ', Sin Saltar;
	FinPara
	Escribir '';
Fin Funcion

Algoritmo Ahorcado
	Definir palabra Como Cadena;
	Definir V,letra Como Caracter;
	Definir n,i,j,aux,intentos Como Entero;
	Definir bandera,l Como Logico;
	
	Escribir 'Piensa en una palabra:', Sin Saltar;
	Leer palabra;
	
	n<- Longitud(palabra);
	
	Dimension V(n);
	
	Para i <- 1 Hasta n Hacer
		V(i) <- '_';
	FinPara
	
	imprimir_vector(n,V);
	
	intentos <-0;
	aux <- 0;
	Mientras intentos<7 Y aux < n   Hacer
		Limpiar Pantalla;
		imprimir_vector(n,V);
		Escribir 'Ingresa una letra:', Sin Saltar;
		Leer letra;
		bandera <- Falso;
		Si check(letra,n,V)=falso Entonces
			Para i<- 1 Hasta  n Hacer
				Si Minusculas(Subcadena(palabra,i,i))=Minusculas(letra) Entonces
					aux <- aux +1;
					V(i)<- letra;
					bandera <- Verdadero;
				FinSi
			FinPara
			Si bandera=Verdadero  Entonces
				Escribir '¡Bien! La letra: ', letra, ' se encuentra en la palabra';
			SiNo
				Escribir 'La letra: ', letra, ' No se encuentra en la palabra. ¡Intentalo de nuevo! ', Sin Saltar;
				intentos <- intentos +1;
				Escribir ' Tienes; ', 7-intentos, ' intentos';
			FinSi
		Sino 
			Escribir 'La letra: ', letra, ' ya ha sido ingresada';
	    FinSi
		Esperar 2 Segundos;
	Fin Mientras
	
	Limpiar Pantalla;
	Si aux = n Entonces
		Escribir '¡Felicidades! Has encontrado la palabra';
	SiNo
		Escribir '¡Ahorcado!  º_º';
	FinSi
	imprimir_vector(n,V);
	
	
	
	
FinAlgoritmo
