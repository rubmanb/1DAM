Algoritmo els_2_menors
	Escribir "dime un primer numero"
	Leer num1
	Escribir "dime un segon numero"
	Leer num2
	Escribir "dime un tercer numero"
	Leer num3
	//menors
	si num1<num2 y num2<num3 y num1<num3 Entonces
		Escribir "los dos menores son: ",num1 " y ", num2
	SiNo
		Escribir "los dos menores son: ", num3 " y ",num1
	FinSi
FinAlgoritmo
