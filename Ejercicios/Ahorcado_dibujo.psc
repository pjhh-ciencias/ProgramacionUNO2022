Funcion imprimir_vector (num_letras,V)
	Definir i Como Entero
	Para i<-1 Hasta num_letras Hacer
		Escribir ' ',V[i],' ', Sin Saltar;
	FinPara
	Escribir ''
FinFuncion

Funcion ahorcado_dibujo(intentos)
	Segun intentos  Hacer
		0:
			Escribir '_________ '
			Escribir '|       |'
			Escribir '|'
			Escribir '|'
			Escribir '|'
			Escribir '|'
		1:
			Escribir '_________ '
			Escribir '|       |'
			Escribir '|      ( )'
			Escribir '|'
			Escribir '|'
			Escribir '|'
		2:
			Escribir '_________ '
			Escribir '|       |'
			Escribir '|      ( )'
			Escribir '|       |'
			Escribir '|       '
			Escribir '|       '
		3:
			Escribir '_________ '
			Escribir '|       |'
			Escribir '|      ( )'
			Escribir '|      /| '
			Escribir '|       '
			Escribir '|       '
		4:
			Escribir '_________ '
			Escribir '|       |'
			Escribir '|      ( )'
			Escribir '|      /|\'
			Escribir '|       '
			Escribir '|       '
		5:
			Escribir '_________ '
			Escribir '|       |'
			Escribir '|      ( )'
			Escribir '|      /|\'
			Escribir '|       |'
			Escribir '|       '
		6:
			Escribir '_________ '
			Escribir '|       |'
			Escribir '|      ( )'
			Escribir '|      /|\'
			Escribir '|       |'
			Escribir '|      /'
		7:
			Escribir '_________ '
			Escribir '|       |'
			Escribir '|      ( )'
			Escribir '|      /|\'
			Escribir '|       |'
			Escribir '|      / \'
	FinSegun
FinFuncion

Algoritmo Ahorcado
	Definir palabra,letra Como Caracter
	Definir num_letras,i,intentos,a,j,c Como Entero
	Definir V Como Caracter
	Escribir 'Inserta una palabra'
	Leer palabra
	Borrar Pantalla
	num_letras <- longitud(palabra)
	Dimension V[num_letras]
	Para i<-1 Hasta num_letras Hacer
		V[i] <- '_'
	FinPara
	intentos <- 0
	ahorcado_dibujo(intentos)
	imprimir_vector(num_letras,V)
	Mientras intentos<7 Hacer
		Leer letra
		a<-0;
		Para i<-1 Hasta num_letras Hacer
		FinPara
		Para i<-1 Hasta num_letras Hacer
			Si subcadena(palabra,i,i)=letra Entonces
				V[i] <- letra
				a<-a+1
				Borrar Pantalla
				ahorcado_dibujo(intentos)
				imprimir_vector(num_letras,V)
			FinSi
		FinPara
		si a=0 Entonces
			Borrar Pantalla
			intentos<-intentos+1
			ahorcado_dibujo(intentos)
			imprimir_vector(num_letras,V)
		FinSi
		j<-0
		Para i<-1 Hasta num_letras Hacer
			Si subcadena(palabra,i,i)=V[i] Entonces
				j<-j+1
			FinSi
		FinPara
		si j=num_letras Entonces
			Escribir "Felicidades encontraste la palabra"
		FinSi
	FinMientras
	si intentos=7 y j<>num_letras Entonces
		Escribir "Se terminaron tus intentos, la palabra era: ",palabra,;
	FinSi
FinAlgoritmo
