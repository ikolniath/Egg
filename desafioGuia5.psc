Algoritmo sin_titulo
	definir n, n1 Como Entero; Definir tablero Como Cadena
	n = 9; n1 = 12
	Dimension tablero[n,n1]

	inicializarMatriz(tablero,n,n1)
	imprimirMatriz(tablero,n,n1)
	Escribir ""
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	imprimirMatriz(tablero,n,n1)
	Escribir ""
	acomodarPalabras(tablero,n1)
	imprimirMatriz(tablero,n,n1)
FinAlgoritmo

SubProceso inicializarMatriz(tablero,n, n1)
	definir i, j Como Entero
	Para i <- 0 Hasta n-1 
		para j <- 0 hasta n1-1
			tablero[i,j] = "*"
		FinPara
	Fin Para
FinSubProceso

SubProceso imprimirMatriz(tablero, n, n1)
	definir i, j Como Entero
	Para i <- 0 Hasta n-1 
		para j <- 0 hasta n1-1
			Mostrar Sin Saltar tablero[i,j] " "
		FinPara
		Escribir ""
	Fin Para
FinSubProceso

SubProceso  agregarPalabra(tablero, p, n3)
	Definir i Como Entero
	para i<- 0 hasta longitud(p)-1
		tablero[n3,i]=Subcadena(p,i,i)
	FinPara
FinSubProceso

SubProceso acomodarPalabras(tablero,n1)
	Definir i,j, contador, diferencia, posicion, x Como Entero; 
	contador = 1; posicion = 0; diferencia= 0
	mientras contador > 0 y contador < 9
		para i <- 0 hasta n1-1
			si posicion = 0
				si tablero[contador,i] = "r"
					posicion = i
				FinSi
			FinSi
		FinPara
		diferencia = 5 - posicion; x = diferencia
		para i <- n1-1 hasta 0 con paso -1
			si i <= x -1 
				tablero[contador,i]= "*"
			SiNo
				si diferencia <= 0
					tablero[contador,i] = tablero[contador,i-x]
				sino 
					tablero[contador,i] = tablero[contador,i-x] 
					diferencia=diferencia-1
				FinSi
			FinSi
		FinPara
		contador=contador+1; posicion = 0 ; diferencia = 0
	FinMientras

FinSubProceso
	