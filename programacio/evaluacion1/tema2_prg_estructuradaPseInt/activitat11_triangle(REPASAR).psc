Algoritmo triangle
	Escribir "dime el lado1"
	Leer lado1
	Escribir "dime el lado2"
	Leer lado2
	Escribir "dime el lado3"
	Leer lado3
	si lado1<=lado2 y lado2>lado3 Entonces
		Escribir "la suma de lado1 y lado2 es major que lado3: ",lado1+lado2
		si lado3<=lado1 y lado2>lado3 Entonces
			Escribir "la suma de lado3 y lado1 es major que lado2: ", lado3+lado1
			si lado2<=lado3 y lado2>lado1 Entonces
				Escribir "la suma de lado2 y lado3 es major que lado1: ", lado2+lado3
			SiNo
				Escribir "tots son iguals"
			FinSi
		FinSi
	FinSi
	
	
FinAlgoritmo

