Algoritmo exercici36_maxim
	//maxim i minim de 10 numeros
	//demanar el primer numero
	Escribir "dime un numero"
	leer n
	maxim = n
	minim = n
	
	//demanar altres numeros
	Para i = 2 hasta 10
		Escribir "numero:"
		leer n
		si n > maxim
			maxim = n
		SiNo
			si n < minim
				minim = n
			SiNo
				Escribir "ERROR"
			FinSi
		FinSi
			Escribir "maxim", maxim
			Escribir "minim", minim
	FinPara
	
	
FinAlgoritmo
