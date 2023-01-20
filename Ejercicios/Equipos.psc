Algoritmo Equipos
	Definir A,E,Ex Como Cadena;
	Definir  i,ac,ec,j,n Como Entero;	
	Dimension A(2,8),E(2,9), Ex(24);
	//Alumnos de Actuaria
	A(0,0)<- 'Daniel';
	A(0,1)<- 'Karime';
	A(0,2)<- 'Estefania';
	A(0,3)<- 'Monserrat';
	A(0,4)<- 'Omar';
	A(0,5)<- 'Luz';
	A(0,6)<- 'Karen';
	A(0,7)<- 'Angelica';
	//Alumnos de Economia
	E(0,0)<- 'Alejandro';
	E(0,1)<- 'Ronaldo';
	E(0,2)<- 'Brisia';
	E(0,3)<- 'Edwin';
	E(0,4)<- 'Harumi';
	E(0,5)<- 'Jose Manuel';
	E(0,6)<- 'Aranza';
	E(0,7)<- 'Veronica';
	E(0,8)<- 'Ozama';
	
	Para i<- 0 Hasta 7 Hacer
		A(1,i)<- '0';
		E(1,i)<- '0';
	FinPara
	E(1,8)<- '0';
	Para i<- 0 Hasta 23 Hacer
		Ex(i)<- '0';
	FinPara
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '';
	Escribir ' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~';
	Escribir '    ===== FORMACIÓN DE EQUIPOS TERCER PARCIAL PROGRAMACION UNO =====      ';
	Escribir ' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~';
	Escribir '';
	Escribir '               ...........................................';
	Escribir '               ---Presiona cualquier tecla para iniciar---';
	Escribir '               ...........................................';
	Esperar Tecla;
	
	Para i<- 1 Hasta 30 Hacer     
		Limpiar Pantalla;
		Escribir '';
		Escribir '';
		Escribir ' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~';
		Escribir '    ===== FORMACIÓN DE EQUIPOS TERCER PARCIAL PROGRAMACION UNO =====      ';
		Escribir ' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~';
		Escribir '';
		Escribir '';	
		n<- Aleatorio(1,8);
		Escribir ' El equipo que tendra dos integrantes de Economía es el equipo:',  n;
		Esperar 350 Milisegundos;
	FinPara
	Esperar 2000 Milisegundos;
	Escribir '';
	Escribir '...............................................................................................';
	Escribir ' Comencemos a formar aleatoriamente los equipos...Presiona cualquier tecla para continuar :D';
	Escribir '...............................................................................................';
	Esperar Tecla;
	
	Escribir '';
	Esperar 1500 Milisegundos;
	Para i<- 1 Hasta  8 Hacer
		Si i=n Entonces			
			Escribir '   Equipo ', i , ': ', Sin Saltar;
			Esperar 4500 Milisegundos;
			Repetir
				ac<- Aleatorio(0,7);
			Hasta Que A(1,ac)='0'
			A(1,ac)<-'1';
			Escribir A(0,ac), Sin Saltar;
			Esperar 2500 Milisegundos;
			Escribir ', ', Sin Saltar;
			Esperar 3000 Milisegundos;
			Repetir
				ec<-Aleatorio(0,8);
			Hasta Que E(1,ec)='0'
			E(1,ec)<-'1';
			Escribir E(0,ec), Sin Saltar;
			Esperar 2500 Milisegundos;
			Escribir ' y ', Sin Saltar;
			Esperar 3000 Milisegundos;			
			Repetir
				ec<-Aleatorio(0,8);
			Hasta Que E(1,ec)='0'
			E(1,ec)<-'1';
			Escribir E(0,ec), Sin Saltar;
			Esperar 1500 Milisegundos;
			Escribir '';
			Escribir '';
		SiNo			
			Escribir '   Equipo ', i , ': ', Sin Saltar;
			Esperar 4500 Milisegundos;
			Repetir
				ac<- Aleatorio(0,7);
			Hasta Que A(1,ac)='0'
			A(1,ac)<-'1';
			Escribir A(0,ac), Sin Saltar;
			Esperar 2500 Milisegundos;
			Escribir ' y ', Sin Saltar;
			Esperar 3000 Milisegundos;
			Repetir
				ec<-Aleatorio(0,8);
			Hasta Que E(1,ec)='0'
			E(1,ec)<-'1';
			Escribir E(0,ec), Sin Saltar;
			Esperar 1500 Milisegundos;
			Escribir '';
			Escribir '';
		FinSi
	FinPara
	Esperar 2000 Milisegundos;
	Escribir '..........................................................................................................................';
	Escribir ' Ahora asignemos aleatoriamente el ejercicio que tiene que entregar cada equipo...Presiona cualquier tecla para continuar';
	Escribir '..........................................................................................................................';
	Esperar Tecla;
	
	Escribir '';
	Esperar 1500 Milisegundos;
	Para i<- 1 Hasta  8 Hacer 
		Escribir ' El equipo ', i , ' tiene que entregar el ', Sin Saltar;
		Esperar 4500 Milisegundos;
		Repetir
			j<- Aleatorio(0,23);
		Hasta Que Ex(j)='0'
		Ex(j)<-'1';
		Escribir 'Ejercicio 3.', Sin Saltar;
		Esperar 1000 Milisegundos;
		Escribir j+1, Sin Saltar;
		Esperar 2000 Milisegundos;
		Escribir '';
		Escribir '';
	FinPara
	
	Esperar 1500 Milisegundos;
	Escribir '';
	Escribir '¡Excelente! A ponerse a trabajar';
	
FinAlgoritmo
