Algoritmo quin_numero_es_major_i_menor
	Escribir "dime un primer numero"
	Leer num1
	Escribir "dime un segon numero"
	Leer num2
	Escribir "dime un tercer numero"
	Leer num3
	//major
	si	num1>num2 y num1>num3 Entonces
		Escribir "el major es: ",num1
	SiNo
		si num2>num1 y num2>num3 Entonces
			Escribir "el major es: ",num2
		SiNo
			si num3>num1 y num3>num2 Entonces
				Escribir "el major es: ",num3
			SiNo
				Escribir "son iguales"
			FinSi
		FinSi
	FinSi
	//menor
	si	num1<num2 y num1<num3 Entonces
		Escribir "el menor es: ",num1
	SiNo
		si num2<num1 y num2<num3 Entonces
			Escribir "el menor es: ",num2
		SiNo
			si num3<num1 y num3<num2 Entonces
				Escribir "el menor es: ",num3
			SiNo
				Escribir "son iguales"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
