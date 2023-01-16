Proceso sin_titulo
	Definir M,i,j,k Como Entero;
	
	Dimension M(2,3);
	k<-1;
	Para i<- 0 Hasta 1 Hacer
		Para j<- 0 Hasta 2 Hacer
			M(i,j)<- k;
			k<- k+1;
		FinPara
	FinPara
	
	Escribir 'La matriz es: ';
	
	Para i<- 0 Hasta 1 Hacer
		Para j<- 0 Hasta 2 Hacer
			Escribir M(i,j), ' ',  Sin Saltar;
		FinPara
		Escribir ' ';
	FinPara
FinProceso
