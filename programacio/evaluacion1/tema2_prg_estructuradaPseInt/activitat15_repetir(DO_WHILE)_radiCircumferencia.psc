Algoritmo exercic15
	Repetir
		//demanar les dades
		Escribir "dime el radi"
		leer radi
		
		//si les dades son incorrectes
		si radi<0
			Escribir "el radi no pot ser negatiu"
		FinSi
		
		
	Hasta Que radi <=0//dades siguen correctes
	area = 3.14*radi*radi
	Escribir "area de la circumferencia es: ",area
FinAlgoritmo
