
funcion opcion <- menu

Escribir ''
Escribir 'elegir la opcion que desea realizar'
escribir ''
Escribir '1. agregar estudiante'
Escribir '2. agregar inasistencias'
escribir '3. listado'
Escribir '4. calcular nota final'
escribir '0. salir'
Leer opcion
FinFuncion

Funcion crearestudiante<- student (code, nombreE,cantestudiantes,parcial1,parcial2,parcial3,inasistencias)
	
	Escribir 'Ingrese la cantidad de estudiantes que quiere registrar de 1 a 10'
	Leer cantestudiantes[1]
	Si (cantestudiantes[1]>0) Y (cantestudiantes[1]<=10) Entonces
		Para i<-1 Hasta cantestudiantes[1] Con Paso 1 Hacer
			Escribir 'Ingrese codigo de estudiante'
			Leer code[i]
			Escribir 'Ingrese nombre de estudiante'
			Leer nombreE(i)
			escribir 'ingrese la primera nota parcial'
			leer parcial1(i)
			escribir 'ingrese la segunda nota parcial'
			leer parcial2(i)
			escribir 'ingrese la tercera nota parcial'
			leer parcial3(i)
		FinPara
	SiNo
		Escribir 'Ingrese un valor valido de 1 a 10'
	FinSi	
Fin Funcion

Funcion inasis<- crearinasistencias (code, inasistencias, Code1)
	escribir ' ingrese el codigo del estudiante' 
	leer Code1
	i <- 1
	encontrado <- Falso
	Mientras i<10 Hacer
		Si code[i]=Code1 Entonces
			Escribir 'ingrese las inasistencias'
			leer inasistencias(i)
			encontrado <- Verdadero
	    FinSi
	  i<- i+1
	FinMientras
	si encontrado=Falso entonces 
		escribir ' el codigo es invalido'
	FinSi
Fin Funcion

Funcion data <- datas (code, nombreE, cantestudiantes)
	escribir cantestudiantes(1)
	Para i<-1 Hasta cantestudiantes(1) Con Paso 1 Hacer
		escribir '/codigos/  ' , code(i) , ' ' ,'/nombres/ ' , nombreE(i)
	Fin Para
FinFuncion

funcion calculonota<- notasCALC (parcial1, parcial2, parcial3, inasistencias, notafinal,nombreE,code)
	escribir 'lista de estudiantes...'
	escribir '/  NOMBRE  /  CODIGO  /  P1  /  P2  /  P3  /  FINAL  '
	i=i+1
	Para h<-1  Hasta 10 Con Paso 1 Hacer
		notafinal(i)=parcial1(i) + parcial2 (i) + parcial3(i)/2
	Fin Para
	Para g<-1 Hasta 10 Con Paso 1 Hacer
		si (inasistencias(i)>10) y (inasistencias(i)<=15 ) Entonces
			notafinal(10)=(notafinal(i) -0.5)
			si (inasistencias(i)>15) Entonces
				notafinal(i)= (notafinal(i) -1)
			FinSi
		FinSi
	Fin Para
	Para k<-1 Hasta 10 Con Paso 1 Hacer
		escribir'/' nombreE(i) '/'  code(i) '/' parcial1(i) '/' parcial2(i) '/' parcial3(i) '/' notafinal(i) 
	Fin Para
	
FinFuncion

Algoritmo nn
	Dimensionar code(10)
	Dimensionar nombreE(10)
	Dimensionar cantestudiantes(10) 
	dimensionar parcial1(10)
	Dimensionar parcial2(10)
	dimensionar parcial3(10)
	dimensionar inasistencias(10)
	dimensionar notafinal(10)
Repetir  
	opc<-menu
	   Segun opc Hacer
		1:
			crearestudiante<- student (code, nombreE,cantestudiantes,parcial1,parcial2,parcial3,inasistencias)
		2:
			inasis <- crearinasistencias (code, inasistencias, Code1)
		3:
			data <- datas (code, nombreE, cantestudiantes)
		4:
		   calculonota<- notasCALC(parcial1, parcial2, parcial3, inasistencia, notafinal,nombreE,code)
			
		De Otro Modo:
			
	  Fin Segun
  Hasta Que opc=0
  Escribir 'saliendo..'
FinAlgoritmo
