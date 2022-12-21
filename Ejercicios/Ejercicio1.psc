SubProceso val <- compara ( sinspa )
	Definir val Como Logico; Definir reves Como Cadena; 
	Definir i Como Entero;
	
	reves<- Subcadena(sinspa,Longitud(sinspa)-1, Longitud(sinspa)-1);
	
	Para i<- Longitud(sinspa)-2 Hasta 0 Con Paso -1 Hacer
		//Escribir Subcadena(sinspa,i,i);
		reves <- Concatenar(reves, Subcadena(sinspa,i,i));
	FinPara
	Escribir reves;
		Si reves=sinspa Entonces
		val<- Verdadero;
	SiNo
		val<- Falso;
	FinSi
FinSubProceso


Funcion sinspa <- quitspace ( z )
	Definir sinspa Como Cadena; Definir i Como Entero;
	i<-0;
	Repetir
		sinspa <- Subcadena(z,i,i);
		i<- i+1;
	Hasta Que sinspa <> ' '
	
	Mientras i<= Longitud(z)-1 Hacer
		Si Subcadena(z,i,i)<>' ' Entonces
			sinspa <- Concatenar(sinspa,Subcadena(z,i,i));
		FinSi
		i<-i+1;
	FinMientras
FinFuncion




Funcion cad <- aminusculas ( x )
	Definir cad Como Cadena;
	cad <- Minusculas(x);
FinFuncion

Algoritmo palindromo
	Definir x,z,sinspa Como Cadena; Definir val Como Logico;
	
	Escribir 'Dame la oracion a evaluar';
	Leer x;
	
	z <- aminusculas(x);
	sinspa <- quitspace(z);
	val <- compara(sinspa);
	Escribir val;
	
	Si val Entonces
		Escribir 'La oracion es un palindromo';	
	SiNo
		Escribir 'La oracion NO es un palindromo';	
	FinSi
	
	
	
FinAlgoritmo
