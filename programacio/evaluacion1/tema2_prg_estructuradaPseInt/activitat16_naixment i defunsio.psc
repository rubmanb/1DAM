Algoritmo exercici16
//Demana any de naixement i de mort d�una persona. 
//Caldr� demanar-ho
//repetidament fins que siguen dades coherents. 
//�s a dir: la data de defunci� no
//pot ser anterior a la de naixement.
	Escribir "Any de naiximent"
	leer naix
	Escribir "any de defunci�"
	leer mort
	Mientras naix>mort
		Escribir "ERROR. no pots morir abans de naixer"
		Escribir "torna a dirme les dades de naiximent i de defucnci�"
		Leer naix
		Leer mort
	FinMientras
		Escribir "has viscut: ",mort-naix, " anys."
FinAlgoritmo
