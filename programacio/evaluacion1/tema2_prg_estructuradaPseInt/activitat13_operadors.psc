Algoritmo operaciones
	Escribir "dime un numero"
	leer numero1
	Escribir "dime otro numero"
	leer numero2
	Escribir "dime una letra: S - R - M - D"
	leer letra
	Segun letra Hacer
		'S':
			Escribir numero1+numero2
		'R':
			Escribir numero1-numero2
		'M':
			Escribir numero1*numero2
		'D':
			Escribir numero1/numero2
		De Otro Modo:
			Escribir "no es una operacion valida"
	Fin Segun
FinAlgoritmo
