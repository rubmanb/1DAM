Algoritmo exercici38
	Escribir "dime el temps en minuts"
	leer minutstotal
	hores = trunc(minutstotal/60)
	minutsRestants = minutstotal % 60
	
	preuHores = hores * 200
	preuMinutsRestants = minutsRestants * 4
	
	si preuMinutsRestants > 200
		preuMinutsRestants = 200
	FinSi
	preuTotal = preuHores+preuMinutsRestants
	Escribir "a pagar: ", preuTotal
FinAlgoritmo
