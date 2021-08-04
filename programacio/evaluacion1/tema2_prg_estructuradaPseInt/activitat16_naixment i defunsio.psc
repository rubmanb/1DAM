Algoritmo exercici16
//Demana any de naixement i de mort d’una persona. 
//Caldrà demanar-ho
//repetidament fins que siguen dades coherents. 
//És a dir: la data de defunció no
//pot ser anterior a la de naixement.
	Escribir "Any de naiximent"
	leer naix
	Escribir "any de defunció"
	leer mort
	Mientras naix>mort
		Escribir "ERROR. no pots morir abans de naixer"
		Escribir "torna a dirme les dades de naiximent i de defucnció"
		Leer naix
		Leer mort
	FinMientras
		Escribir "has viscut: ",mort-naix, " anys."
FinAlgoritmo
