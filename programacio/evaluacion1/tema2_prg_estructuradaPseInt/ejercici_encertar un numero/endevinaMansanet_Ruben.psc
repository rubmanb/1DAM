Algoritmo encertar_num
	aleatori = azar(100)+1
	Escribir "Encertar un número del 1 al 100"
	Escribir "Intents màxim que tindràs per a encertar-lo."
	leer intents
	Escribir " Anem a escomeçar. Primer intent, dime un numero"
	leer num
	intents_ini=intents
	n_max = num
	n_min = num
	
	para i=1 hasta intents
		si num>n_max
			n_max=num
		SiNo
			si num<n_min
				n_min=num
			FinSi
		FinSi
	FinPara
	
	Mientras num!=aleatori y intents>=1
		//comproba numeros
		si num > aleatori y intents==intents_ini
			Escribir "No. Es menor. Està entre: 1 i ",num-1
		SiNo
			si num < aleatori y intents==intents_ini
				Escribir "No. Es major. Està entre: ",num+1," i 100"
			FinSi
		FinSi
	
		si num > aleatori y intents<intents_ini
			si aleatori<n_min
				Escribir "No. Es menor. Està entre: 1 i ",num-1
			SiNo
				Escribir "No. Es menor. Està entre: ",num," i ",n_min-1	
			FinSi
			
		SiNo
			si num < aleatori 
				Escribir "No. Es major. Està entre: ",num+1," i ",n_max
			finsi
		FinSi
			//decrement d'intents fins 0
			intents=intents-1
			
		si intents > 0 y no num==aleatori
			Escribir "Te queden: ",intents," intents"
			Escribir "Donam un numero"
			leer num
		FinSi
	FinMientras
		//contador de intents
		total_intents= (intents_ini-intents)+1
		//comproba com ha finalitzat el joc
		si intents==0 
			Escribir "Has superat els intents. No has encertat. El número era: ",aleatori
		SiNo
			si num==aleatori y intents>0
				Escribir "Molt be. Has encertat en ",total_intents," intents."
			FinSi
		finsi
FinAlgoritmo
