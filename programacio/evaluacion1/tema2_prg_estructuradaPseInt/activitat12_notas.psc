Algoritmo nota_clase
	Escribir "dime una nota"
	leer nota
	si nota=0 Entonces
		Escribir "molt deficient ", nota
	SiNo
		si nota<5 y nota>0 Entonces
			Escribir "insuficient ", nota
		SiNo
			si nota>=5 y nota<6 Entonces
				Escribir "suficient ", nota
			SiNo
				si nota>=6 y nota<7
					Escribir "be ", nota
				SiNo
					si nota>=7 y nota<9 Entonces
						Escribir "notable ", nota
					SiNo
						si nota>=9 y nota<=10 Entonces
							Escribir "excelent ", nota
						SiNo
							Escribir "la nota esta mal"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
