Algoritmo exercici15
//Fes un ordinograma tal que, donat el radi, 
//calcule l��rea del cercle, per�
//demanant repetidament el radi fins que l�usuari 
//ens done un radi positiu.
	Escribir "dime el radi de la circumferencia"
	leer radi
	Mientras radi<0
		Escribir "ERROR: Radi incorrecte"
		escribir"torna a dirme el radi"
		Leer radi
	FinMientras
	Escribir "correcte, el radi es positiu"
	Escribir "resultat: ", (3.14*radi*radi)
FinAlgoritmo
