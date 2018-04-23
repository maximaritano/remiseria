class Viaje{
	var property km
	var property tiempoMaximoEnHoras
	var property cantidadPasajeros
	var autoQueHizoElViaje
	var coloresIncompatibles = #{}
	
	constructor (_km, _tiempoMaximoEnHoras, _cantidadPasajeros){
		km = _km
		tiempoMaximoEnHoras = _tiempoMaximoEnHoras
		cantidadPasajeros = _cantidadPasajeros
	} 
	
	method autoQueHizoElViaje() = autoQueHizoElViaje
	
	method coloresIncompatibles() = coloresIncompatibles
	
	method listaColoresIncompatibles(_colores){
		coloresIncompatibles.addAll(_colores)
	}
	
	method puedeHacerElViaje(vehiculo){
		return (vehiculo.velocidadMaxima() > ((km/tiempoMaximoEnHoras) + 9)
			&& (vehiculo.capacidad() >= cantidadPasajeros)
			&& (!coloresIncompatibles.contains(vehiculo.color()) )
		)
	}
	
	method autoQueLoHizo(auto){
		autoQueHizoElViaje = auto
	}
}