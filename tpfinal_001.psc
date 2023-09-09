Algoritmo ListaPacientes_y_Facturacion
	// Nota, las variables que iteran arrancan del 1 al N
	// Definiendo variables
	Definir paciente, mes, dias, email, obrasocial, continuar Como Cadena
	Definir sesiones, facturanum, fecha, menu, x, z Como Entero
	Definir importe, recibo, importeunidad, cuil, cuit Como Real
	Definir diaElegido, horaElegida Como Cadena
	// Definiendo Arreglos
	Dimensionar dias(5)
	Dimensionar horas(8)
	continuar <- 's'
	// Ingreso a menu del sistema
	Repetir
		Limpiar Pantalla
		Si continuar =='s' Entonces
			Escribir '+--------------------------------------------------------------------+'
			Escribir '| Ingrese que funcion desea realizar:                                |'
			Escribir '| Opcion 1: Ingreso de datos de pacientes                            |'
			Escribir '| Opcion 2: Control y datos de facturacion                           |'
			Escribir '| Opcion 3: Información del paciente                                  |'
			Escribir '| Opcion 4: Poner 0 para salir                                       |'
			Escribir '+--------------------------------------------------------------------+'
			Leer menu
		SiNo
			// Control de error para menu seguir o salir
			Si continuar=='n' Entonces
				menu <- 0
			SiNo
				Escribir 'El valor ingresado no concuerda con los pedidos, desea realizar otra funcion (S/N)'
				Leer continuar
				continuar <- Minusculas(continuar)
			FinSi
		FinSi
		// Segun lo elegido en el menu, se ingresa a las diferentes opciones
		// Ingreso de datos del paciente
		Si menu==1 Entonces
			// Cargo el Arreglo dias con los datos a mostrar en las diferentes posiciones
			dias[1] <- 'Lunes '
			dias[2] <- 'Martes '
			dias[3] <- 'Miércoles '
			dias[4] <- 'Jueves '
			dias[5] <- 'Viernes '
			
			// Cargo el Arreglo horas con los datos a mostrar en las diferentes posciones.
			horas[1] <- '08:00 hs hasta 08:45 hs'
			horas[2] <- '09:00 hs hasta 09:45 hs'
			horas[3] <- '10:00 hs hasta 10:45 hs'
			horas[4] <- '11:00 hs hasta 11:45 hs'
			horas[5] <- '13:00 hs hasta 13:45 hs'
			horas[6] <- '14:00 hs hasta 14:45 hs'
			horas[7] <- '15:00 hs hasta 15:45 hs'
			horas[8] <- '16:00 hs hasta 16:45 hs'
			// Muestro los dias y las horas para elegir
			Repetir
				salir <- 1
				Para i<-1 Hasta 5 Hacer
					Escribir i, '_ ', dias[i]
				FinPara
				Leer diaElegido
				Escribir 'Seleccione la hora para el turno:' // Selecciono el dia 
				Para i<-1 Hasta 8 Hacer
					Escribir i, ' Turno: ', horas[i]
				FinPara
				Leer horaElegida
				salir <- 0 // Selecciono la hora  
			Hasta Que salir==0
			Escribir 'Ingrese el nombre del paciente:'
			Leer paciente
			paciente <- paciente
			Escribir 'Ingrese el cuil del paciente:'
			Leer cuil
			cuil <- cuil
			Escribir 'Ingresar el E-mail de contacto:'
			Leer email
			email <- email
			Escribir 'Ingrese La Obra social a la cual pertenece:'
			Leer obrasocial
			obrasocial <- obrasocial
			Escribir 'Ingrese el cuit de la obrasocial:'
			Leer cuit
			cuit <- cuit
			
			Si sesiones == 0 Entonces
				Escribir 'ingrese cantidad de sesiones por mes:'
				Leer sesiones
				sesiones <- sesiones
				x <- 1
			SiNo
				x <- 1
			FinSi
			
			Escribir '----------------------------------------------------'
			Escribir 'Desea realizar otra funcion (S/N)'
			Leer continuar
			continuar <- Minusculas(continuar)
		FinSi
		// Ingreso de datos de la facturacion del paciente	
		Si menu==2 Entonces
			Escribir 'Ingresar numero de factura'
			Leer facturanum
			facturanum <- facturanum
			Si sesiones == 0 Entonces
				Escribir 'Ingrese valor de sesione por unidad: '
				Leer importeunidad
				importeunidad <- importeunidad
				Escribir 'Ingrese cantidad de Sesiones en el mes: '
				Leer sesiones
				sesiones <- sesiones
				recibo <- importeunidad*sesiones
				Escribir 'La cantidad a cobrar por la factura Nº ', facturanum, ' por la cantidad de ', sesiones, ' sesiones del paciente es de :$', recibo
				z <- 1
			SiNo
				Escribir 'Ingrese valor de sesiones por unidad: '
				Leer importeunidad
				importeunidad <- importeunidad
				recibo <- importeunidad*sesiones
				Escribir 'La cantidad a cobrar por la factura Nº ', facturanum, ' con ' sesiones ' sesiones del paciente es de :$', recibo
				z <- 1
			FinSi
			Escribir '----------------------------------------------------'
			Escribir 'Desea realizar otra funcion (S/N)'
			Leer continuar
			continuar <- Minusculas(continuar)
		FinSi
		// Consulta datos del paciente y facturacion del mismo
		Si menu==3 Entonces
			// control de error por falta de ingreso de datos para mostrar 
			Si x=1 Entonces
				Si z=1 Entonces
					Escribir 'El paciente ', paciente
					Escribir 'con Cuit:', cuit
					Escribir 'La Obra social a la que pertenece es:', obrasocial
					Escribir 'El cuil:', cuil
					Escribir 'Concurrira el dia ', dias[diaElegido]
					Escribir 'en el turno de las ', horas[horaElegida]
					Escribir 'La cantidad de sesiones son: ', sesiones, ' al mes.'
					Escribir 'La cantidad a cobra por el mes es de $', recibo
					x <- 0
					z <- 0
				SiNo
					Escribir 'Faltan datos de facturacion, por favor ingrese los datos en el menu 2'
				FinSi
			SiNo
				Si z=1 Entonces
					Escribir 'Faltan los datos del paciente por cargar'
					sesiones = 0
				SiNo
					Escribir 'Por favor ingrese los datos del paciente y de facturacion para poder mostrar el resultado'
				FinSi
				sesiones = 0
			FinSi
			
			Escribir '----------------------------------------------------'
			Escribir 'Desea realizar otra funcion (S/N)'
			Leer continuar
			continuar <- Minusculas(continuar)
			sesiones = 0
		FinSi
		// Cobertura contra error de eleccion en el menu
		Si menu>3 Entonces
			Escribir ' Esa opcion no es valida, Desea realizar otra funcion (S/N)'
			Leer continuar
			continuar <- Minusculas(continuar)
		FinSi
	Hasta Que menu=0
	// Saludo de despedia
	Escribir ' Gracias por usar nuestro programa, vuelva pronto! '
FinAlgoritmo
