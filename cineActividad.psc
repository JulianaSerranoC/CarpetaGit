Algoritmo Cine
	Escribir "Bienvenido al inventario que le muestra la cantidad de personas por día que asistieron a cada una de las salas del cine.";
	Definir A, n, m, i, j, B, cantidadPromedioPorDia Como Entero;
	Escribir "Ingrese la cantidad de salas que tiene el cine: ";
	Leer n;
	Escribir "Ingrese la cantidad de dias en los que las personas asistieron a las salas: ";
	Leer m;
	
	Dimension A(n, m);
	Escribir "El tamaño de su inventario es de: ", n * m;
	
	Para i <- 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			Escribir "Ingrese la cantidad de asistentes del dia #", j + 1, " en la sala #", i + 1, ": ";
			Leer A(i, j);
		Fin Para
	Fin Para
	
	Definir acumulador Como Entero;
	Dimension B(n);
	
	Para i <- 0 Hasta n - 1 Hacer
		acumulador = 0;
		Para j = 0 Hasta m - 1 Hacer
			acumulador = acumulador + A(i, j);
		Fin Para
		B(i) = acumulador;
	Fin Para
	
	Para i <- 0 Hasta n - 1 Hacer
		Escribir "La cantidad total de los asistentes en la sala #", i + 1, " fue de: ", B(i);
		Escribir "El promedio de los asistentes de la sala #", i + 1, " fue de: ", (B(i))/m; 
	Fin Para
	
	cantidadPromedioPorDia = 0;
	
	Para i <- 0 Hasta m - 1 Hacer
		acumulador = 0;
		Para j = 0 Hasta n - 1 Hacer
			acumulador = acumulador + A(j, i);
		Fin Para
		cantidadPromedioPorDia = acumulador;
		Escribir "La cantidad promedio del día #", i + 1, " fue de: ", (cantidadPromedioPorDia)/n;
	Fin Para
	
FinAlgoritmo
