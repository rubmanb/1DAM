Algoritmo exercici16_bucle_fins
Repetir
	Escribir "any de naiximent"
	Leer naix
	Escribir "any de defuncio"
	leer mort
	si naix<mort
		escribir "ERROR"
	FinSi
Hasta Que naix<mort
any = mort-naix
Escribir "has viscut: ",any, " anys"
FinAlgoritmo
