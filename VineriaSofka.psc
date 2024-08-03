Algoritmo VineriaSofka 
	Escribir "Bienvenido a Vineria Sofka"; 
	Definir edad, CantidaddeVinosDeMora, CantidaddeVinosDeManzana, ValorTotal, dinero Como Entero;
	Escribir "¿Cuál es su edad?";
	Leer edad;
	
	Si edad >= 18 Entonces
		Escribir "Tenemos dos opciones de vino: Vino de Manzana, con un valor de $100000 pesos; y Vino de Mora, con un valor de $50000 pesos";
		Escribir "¿Cuantos vinos de Manzana desea comprar? (Si no desea comprar vinos de Manzana simplemente omita este paso)";
		Leer CantidaddeVinosDeManzana;
		Escribir "¿Cuantos vinos de Mora desea comprar? (Si no desea comprar vinos de Mora simplemente omita este paso)";
		Escribir "Si no compro vinos de Manzana se espera que al menos compre dos vinos de Mora, ¡Porfavor!";
		Leer CantidaddeVinosDeMora;
		
		Si CantidaddeVinosDeManzana > CantidaddeVinosDeMora Entonces
			Escribir "Eres un obsesionado con nuestros vinos de Manzana: Eres un Manzanero";
		SiNo
			Si CantidaddeVinosDeManzana < CantidaddeVinosDeMora Entonces
				Escribir "Eres un obsesionado con nuestros vinos de Mora: Eres un Morero";
			SiNo
				Si CantidaddeVinosDeManzana = CantidaddeVinosDeMora Entonces
					Escribir "Usted no es ni Morero ni Manzanero; usted es simplemente un obsesionado con los vinos";
				FinSi
			Fin Si
		Fin Si
		
		ValorTotal = (CantidaddeVinosDeManzana * 100000) + (CantidaddeVinosDeMora * 50000);
		
		Escribir "El valor total de su compra es: ", ValorTotal;
		Escribir "Ingrese el dinero";
		Leer dinero;
		Si dinero > ValorTotal Entonces
			Escribir "¡Gracias por la propina de $", dinero - ValorTotal, " pesos";
		Sino
			Si dinero < ValorTotal Entonces
				Escribir "Usted queda debiendo un total de $", ValorTotal - dinero, " pesos. ¡Esperamos que lo pague la proxima vez que venga!";
			Sino 
				Escribir "¡Que persona más dura! ¡No da propina ni nada!";
			FinSi
		FinSi
	SiNo 
		Escribir "Usted aún es menor de edad. No podemos ofrecerle nuestros productos";
	FinSi
FinAlgoritmo
