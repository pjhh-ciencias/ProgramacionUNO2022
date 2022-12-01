Proceso Ejercicio2_2
	Definir c,x,a,b,z,s,i Como Entero; //Determinar variables
	c <- 0; x <- 0; z <- 0; s <- 0; //Determinar valor de las variables
	Escribir 'Los subconjuntos no vacíos del conjunto {1,2,3,4,5} son';
	Repetir 
		c <- c+1; //  c<-0+1, c<-1
		Escribir c;
	Hasta Que c=5
	Repetir
		x <- x+1;  //x<- 0+1, x<-1
		Si x<5 Entonces
			a <- x+1;  //a<- 1+1, a<-2
			Escribir x,',',a;  //1,2
			Repetir //No se actualiza 'x' hasta acompletar las combinaciones
				Si a<5 Entonces 
					a <- a+1;  //a<- 2+1, a<-3
					Escribir x,',',a; //1,3
				FinSi
			Hasta Que a=5
		FinSi
	Hasta Que  x=5-1 
	a <- 0; //Se actualiza el valor de a, para reutilizar la variable
	Repetir
		Si a<5 Entonces
			a <- a+1; s <- a+1; z <- s+1; // a<-0+1, a<-1; s<-1+1, s <- 2; z<- 2+1, z<- 3
			Escribir a,',',s,',',z; //1,2,3
				Repetir
					Si a<3 Entonces //Para evitar combinaciones iguales
						Repetir
							z <- z+1; // z<-3+1, z<-4
							Escribir a,',',s,',',z; //1,2,4
						Hasta Que z=5
						z <- s+2; s <- s+1; // z<-2+2, z<- 4; s<-2+1, s<-3
						Escribir a,',',s,',',z; // 1,3,4
					FinSi
				Hasta Que z=5
			FinSi
	Hasta Que a=3
	a <- 0; // Se actualiza el valor de a
	Repetir
		Si a<5 Entonces
			a <- a+1; s <- a+1; z <- s+1; b <- z+1; // a<-0+1, a<-1; s<-1+1, s<-2; z<-2+1, z<-3; b<-3+1, b<-4
			Escribir a,',',s,',',z,',',b; // 1,2,3,4
			Repetir
				Si a<2 Entonces 
					Repetir
						b <- b+1; // b<- 4+1, b<-5
						Escribir a,',',s,',',z,',',b; // 1,2,3,5
					Hasta Que b=5
					Repetir
						z <- s+2; // z<- 2+2, z<-4
						Escribir a,',',s,',',z,',',b; // 1,2,4,5
					Hasta Que b=5
					s <- s+1; // s<-2+1, s<-3
					Escribir a,',',s,',',z,',',b; // 1,3,4,5
				FinSi
			Hasta Que b=5
		FinSi
	Hasta Que a=2
	Repetir
		Para i<-1 Hasta 5 Hacer // i es contador que empieza desde el 1 hasta 5
			x <- i; //Se actualiza el valor de x
			Escribir x,' ' Sin Saltar; //X<-1 (por i)
			x <- x+1; //x<- 1+1, x<-2
		FinPara
	Hasta Que x>=5
FinProceso
