SubProceso m <- calculo_pendiente ( x1,y1,x2,y2 )
	Definir m Como Real;
	
	m <-(y2-y1)/(x2-x1);
	
FinSubProceso

SubProceso x1 <- xcoor ( C, i Por Referencia )
	Definir x Como Cadena;
	Definir x1 Como Real;
	
	x<- Subcadena(C,1,1);
	i<-2;
	Mientras Subcadena(C,i,i)<>',' Hacer
		x<- Concatenar(x,Subcadena(C,i,i));
		i<- i+1;
	FinMientras	
	x1<- ConvertirANumero(x);
FinSubProceso

SubProceso y1 <- ycoor ( C, i)
	Definir x Como Cadena;
	Definir y1 Como Real;
	
	i<-i+1;
	x<- Subcadena(C,i,i);
	i<-i+1;
	Mientras Subcadena(C,i,i)<>')' Hacer
		x<- Concatenar(x,Subcadena(C,i,i));
		i<- i+1;
	FinMientras	
	y1<- ConvertirANumero(x);
FinSubProceso

SubProceso Leer_punto ( C Por Referencia)
	Escribir 'Dame las coordenadas del punto: ';
	Leer C;
FinSubProceso



Proceso Pendiente
	Definir C Como Cadena;
	Definir x1,y1,x2,y2 Como Real;
	Definir i Como Entero;

	Leer_punto(C);
	//Escribir C;
	x1<- xcoor(C,i);
	y1<- ycoor(C,i);
	//Escribir 'La coordenada x1 es: ', x1;
	//Escribir 'El valor actual de i es:', i;
	//Escribir 'La coordenada y1 es: ', y1;
	
	Leer_punto(C);
	//Escribir C;
	x2<- xcoor(C,i);
    y2<- ycoor(C,i);
	//Escribir 'La coordenada x2 es: ', x2;
	//Escribir 'El valor actual de i es:', i;
	//Escribir 'La coordenada y2 es: ', y2;
	
	Si x1=x2 Entonces
		Escribir 'Los puntos se encuentran sobre una linea recta vectical';
	SiNo
		Escribir 'La pendiente de la recta  que pasa por lo puntos dados es: ', calculo_pendiente(x1,y1,x2,y2);
	FinSi
FinProceso
