SubProceso MezclarMazo (mazo Por Referencia, cantCartas)
	Dimension ordenes(cantCartas, 2)
	Definir i, j Como Entero
	// Estoy creando ordenes de como se va a mezclar el mazo
	Para i<- 0 Hasta cantCartas -1 Hacer
		ordenes[i, 0] <- Aleatorio(0,39)
		ordenes[i, 1] <- Aleatorio(0,39)
	FinPara
	// Mezclando el mazo
	Definir tempNum, tempPalo, tempValor Como Entero
	Para i <- 0 Hasta  cantCartas - 1 Hacer
		tempNum <- mazo[ordenes[i, 0], 0]
		tempPalo <- mazo[ordenes[i, 0], 1]
		tempValor <- mazo[ordenes[i, 0], 2]
		mazo[ordenes[i, 0], 0] <- mazo[ordenes[i, 1], 0]
		mazo[ordenes[i, 0], 1] <- mazo[ordenes[i, 1], 1]
		mazo[ordenes[i, 0], 2] <- mazo[ordenes[i, 1], 2]
		mazo[ordenes[i, 1], 0] <- tempNum
		mazo[ordenes[i, 1], 1] <- tempPalo
		mazo[ordenes[i, 1], 2] <- tempValor
	FinPara
FinSubProceso

Funcion Palo <- nombrePalo(numero)
	SI numero == 1
		Palo <- "Espada"
	FinSi
	Si numero == 2
		Palo <- "Basto"
	FinSi
	Si numero == 3
		Palo <- "Oro"
	FinSi
	Si numero == 4
		Palo <- "Copa"
	FinSi
FinFuncion

SubProceso MostrarMazo(mazo Por Referencia, cantCartas)
	Para i <- 0 Hasta  cantCartas - 1 Hacer
		Escribir mazo[i, 0], " de ", nombrePalo(mazo[i,1])
	FinPara
FinSubProceso

Algoritmo truco
	
	Dimension mazo[40, 3]
    Definir mazo, i Como Entero
    // Codificación de Palos: 
    // 1 = Espada, 2 = Basto, 3 = Oro, 4 = Copa    
    // --- FILAS 0 A 3: LAS CUATRO CARTAS MÁS VALIOSAS ("MATAS") ---
	mazo[0,0] <- 1;  mazo[0,1] <- 1;  mazo[0,2] <- 1  // 1 de Espada (Valor 1)
	mazo[1,0] <- 1;  mazo[1,1] <- 2;  mazo[1,2] <- 2  // 1 de Basto (Valor 2)
	mazo[2,0] <- 7;  mazo[2,1] <- 1;  mazo[2,2] <- 3  // 7 de Espada (Valor 3)
	mazo[3,0] <- 7;  mazo[3,1] <- 3;  mazo[3,2] <- 4  // 7 de Oro (Valor 4)
	
	// --- FILAS 4 A 7: LOS TRES ---
	mazo[4,0] <- 3;  mazo[4,1] <- 1;  mazo[4,2] <- 5  
	mazo[5,0] <- 3;  mazo[5,1] <- 2;  mazo[5,2] <- 5  
	mazo[6,0] <- 3;  mazo[6,1] <- 3;  mazo[6,2] <- 5  
	mazo[7,0] <- 3;  mazo[7,1] <- 4;  mazo[7,2] <- 5  
	
	// --- FILAS 8 A 11: LOS DOS ---
	mazo[8,0] <- 2;  mazo[8,1] <- 1;  mazo[8,2] <- 6  
	mazo[9,0] <- 2;  mazo[9,1] <- 2;  mazo[9,2] <- 6  
	mazo[10,0] <- 2; mazo[10,1] <- 3; mazo[10,2] <- 6 
	mazo[11,0] <- 2; mazo[11,1] <- 4; mazo[11,2] <- 6 
	
	// --- FILAS 12 A 13: ASES FALSOS ---
	mazo[12,0] <- 1; mazo[12,1] <- 3; mazo[12,2] <- 7 // 1 de Oro
	mazo[13,0] <- 1; mazo[13,1] <- 4; mazo[13,2] <- 7 // 1 de Copa
	
	// --- FILAS 14 A 17: LOS DOCES (REYES) ---
	mazo[14,0] <- 12; mazo[14,1] <- 1; mazo[14,2] <- 8 
	mazo[15,0] <- 12; mazo[15,1] <- 2; mazo[15,2] <- 8 
	mazo[16,0] <- 12; mazo[16,1] <- 3; mazo[16,2] <- 8 
	mazo[17,0] <- 12; mazo[17,1] <- 4; mazo[17,2] <- 8 
	
	// --- FILAS 18 A 21: LOS ONCES (CABALLOS) ---
	mazo[18,0] <- 11; mazo[18,1] <- 1; mazo[18,2] <- 9 
	mazo[19,0] <- 11; mazo[19,1] <- 2; mazo[19,2] <- 9 
	mazo[20,0] <- 11; mazo[20,1] <- 3; mazo[20,2] <- 9 
	mazo[21,0] <- 11; mazo[21,1] <- 4; mazo[21,2] <- 9 
	
	// --- FILAS 22 A 25: LOS DIECES (SOTAS) ---
	mazo[22,0] <- 10; mazo[22,1] <- 1; mazo[22,2] <- 10 
	mazo[23,0] <- 10; mazo[23,1] <- 2; mazo[23,2] <- 10 
	mazo[24,0] <- 10; mazo[24,1] <- 3; mazo[24,2] <- 10 
	mazo[25,0] <- 10; mazo[25,1] <- 4; mazo[25,2] <- 10 
	
	// --- FILAS 26 A 27: SIETES FALSOS ---
	mazo[26,0] <- 7;  mazo[26,1] <- 2; mazo[26,2] <- 11 // 7 de Basto
	mazo[27,0] <- 7;  mazo[27,1] <- 4; mazo[27,2] <- 11 // 7 de Copa
	
	// --- FILAS 28 A 31: LOS SEIS ---
	mazo[28,0] <- 6;  mazo[28,1] <- 1; mazo[28,2] <- 12 
	mazo[29,0] <- 6;  mazo[29,1] <- 2; mazo[29,2] <- 12
	mazo[30,0] <- 6;  mazo[30,1] <- 3; mazo[30,2] <- 12 
	mazo[31,0] <- 6;  mazo[31,1] <- 4; mazo[31,2] <- 12 
	
	// --- FILAS 32 A 35: LOS CINCOS ---
	mazo[32,0] <- 5;  mazo[32,1] <- 1; mazo[32,2] <- 13 
	mazo[33,0] <- 5;  mazo[33,1] <- 2; mazo[33,2] <- 13 
	mazo[34,0] <- 5;  mazo[34,1] <- 3; mazo[34,2] <- 13 
	mazo[35,0] <- 5;  mazo[35,1] <- 4; mazo[35,2] <- 13 
	
	// --- FILAS 36 A 39: LOS CUATROS ---
	mazo[36,0] <- 4;  mazo[36,1] <- 1; mazo[36,2] <- 14 
	mazo[37,0] <- 4;  mazo[37,1] <- 2; mazo[37,2] <- 14 
	mazo[38,0] <- 4;  mazo[38,1] <- 3; mazo[38,2] <- 14 
	mazo[39,0] <- 4;  mazo[39,1] <- 4; mazo[39,2] <- 14 
	
	MezclarMazo(mazo, 40)
	MostrarMazo(mazo, 40)
FinAlgoritmo
