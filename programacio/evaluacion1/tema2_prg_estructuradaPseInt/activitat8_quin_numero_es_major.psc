Algoritmo quin_numero_es_major
	Escribir "dime un primer numero"
	Leer num1
	Escribir "dime un segon numero"
	Leer num2
	Escribir "dime un tercer numero"
	Leer num3
	Si num1>num2 Entonces
		Si num1>num3 Entonces
			Escribir "numero 1 es el major: ", num1
		SiNo
			Escribir  "numero 3 es el major: ", num3
		FinSi
	SiNo
		Si num2>num3 Entonces
			Escribir  "numero 2 es el major: ", num2
		SiNo
			Escribir  "numero 3 es el major: ", num3
		FinSi
	Fin Si
FinAlgoritmo
