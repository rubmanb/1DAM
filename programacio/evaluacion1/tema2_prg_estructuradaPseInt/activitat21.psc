Algoritmo exercici21
	Escribir "dime un numero i vorem els divisors que te"
	leer num
	cdiv=0 // inicializar el contador!!!
	para i=1 hasta num
		//si num es divisible per i
		si num%i==0
			cdiv = cdiv+1
		FinSi
	FinPara
	Escribir "el numero ",num, "te ",cdiv, "contadors"
FinAlgoritmo
