class Corsa{
	const property capacidad = 4
	const property velocidadMaxima = 150
	const property peso = 1300
	var property color
	
	constructor (_color){
		color = _color
	}
}

class Standard{
	var property tanqueAdicional = false
	const property color = "azul"
	
	method agregarTanqueAdicional(){
		tanqueAdicional = true
	}
	
	method capacidad(){
		return if (tanqueAdicional) 3
		else 4
	}
		
	method velocidadMaxima(){
		return if (tanqueAdicional) 120
		else  110
	}
		
	method peso(){
		return if (tanqueAdicional) 1350
		else 1200
	}	
}

object traffic{
	var property interior
	var property motor
	const property color = "blanco"
	
	method cambiarInterior(_interior){
		interior = _interior
	}
	
	method cambiarMotor(_motor){
		motor = _motor
	}
	
	method capacidad() = interior.capacidad()
		
	method velocidadMaxima() = motor.velocidadMaxima() 
	
	method peso() = 4000 + interior.peso() + motor.peso()	
}

object comodo{
	const property capacidad = 5
	const property peso = 700
}

object popular{
	const property capacidad = 12
	const property peso = 1000
}

object pulenta{
	const property velocidadMaxima = 130
	const property peso = 800
}

object bataton{
	const property velocidadMaxima = 80
	const property peso = 500
}

class Distinto{
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
	
	constructor(_capacidad, _velocidadMaxima, _peso, _color){
		capacidad = _capacidad
		velocidadMaxima = _velocidadMaxima
		peso = _peso
		color = _color
	}
}