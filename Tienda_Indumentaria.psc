Algoritmo Tienda_Indumentaria
	Definir x Como Entero
	Definir venta, descuento, total_bruto, total_descuento, venta_chico, venta_adulto,descuento_dia Como Real
	total_bruto <- 0
	total_descuento <- 0
	venta_chico <- 0
	venta_adulto <- 0
	Escribir 'bienvenido a Tienda de Idumentaria, todos los dias hay  descuanto a partir de una comprar de 2000$ '
	Escribir 'Porfavor ingrese el descuento del dia  '
	Leer descuento_dia
	descuento_dia=descuento_dia/100
	
	Escribir '   '
	Mientras x<>3 Hacer
		Escribir 'seleccione una oprcion de tipo de venta: '
		Escribir ' 1 = Ropa de Chico'
		Escribir ' 2 = Ropa de adulto'
		Escribir ' 3 = Salir'
		Leer x
		Si x=1 O x=2 Entonces
			Escribir 'Ingrese el importe de la venta '
			Leer venta
			descuento <- 0
			Si venta>2000 Entonces
				descuento <- venta*descuento_dia
			FinSi
			Si x=1 Entonces
				venta_chico <- venta_chico+venta-descuento
			SiNo
				venta_adulto <- venta_adulto+venta-descuento
			FinSi
			Escribir 'El valor de la prenda es: ', venta-descuento, '$'
			Escribir 'El descuento aplicado es: ', descuento, '$'
			Escribir ''
			total_descuento <- total_descuento+descuento
			total_bruto <- total_bruto+venta
		FinSi
	FinMientras
	Escribir 'El monto de las ventas de prenda para  chicos es: ', venta_chico, '$'
	Escribir 'El monto de las ventas de  prenda para adulto es: ', venta_adulto, '$'
	Escribir 'Los descuento apicados en total es: ', total_descuento, '$'
	Escribir 'El total bruto de las ventas es: ', total_bruto, '$'
FinAlgoritmo
