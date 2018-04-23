import flota.*
import viaje.*

class Remiseria{
	var property vehiculos = #{}
	var property viajes = #{}
	
	method agregarAFlota(vehiculo) =
		vehiculos.add(vehiculo)
	
	method quitarDeFlota(vehiculo) =
	vehiculos.remove(vehiculo)
	
	method pesoTotalFlota(){
	return vehiculos.sum({_vehiculo => _vehiculo.peso()})
	}
	
	method esRecomendable(){
		return (vehiculos.size() > 3 and vehiculos.all({_vehiculo => _vehiculo.velocidadMaxima() >= 100}))
	}
	
	method capacidadTotalYendoA(velocidad){
		return self.velocidadAlMenos(velocidad).sum({_vehiculo => _vehiculo.capacidad()})
	}
	
	method velocidadAlMenos(velocidad) = vehiculos.filter({_vehiculo => _vehiculo.velocidadMaxima() >= velocidad})
	
	method colorDelAutoMasRapido(){
		return vehiculos.max({_vehiculo => _vehiculo.velocidadMaxima()}).color()
	}	
	
	method autosDisponiblesParaElViaje(viaje){
		return vehiculos.filter({_vehiculo => viaje.puedeHacerElViaje(_vehiculo)})
	}
	
	method registrarViaje(viaje, auto){
		viajes.add(viaje)
		viaje.autoQueLoHizo(auto)
	}
	
	method cuantosViajesHizo(vehiculo){
		return viajes.filter({_viaje => _viaje.autoQueHizoElViaje() == vehiculo}).size()
	}
	
	method cuantosViajesHizoDeMasDe(_kilometros){
		return viajes.filter({_viaje => _viaje.km() > _kilometros}).size()
	}
}