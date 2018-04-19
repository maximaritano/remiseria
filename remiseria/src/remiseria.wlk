import flota.*

class Remiseria{
	var property vehiculos = #{}
	
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
	
	method autoMasRapido() = vehiculos.max({_vehiculo => _vehiculo.velocidadMaxima()})
	
	method colorDelAutoMasRapido(){
		return self.autoMasRapido().color()
	}	
}