import Rodados.*
import dependencia.*
class Pedidos{
	var property km
	var property tiempoMax
	var property cantDePasajeros
	var property coloresIncompatibles = #{}
	method velocidadRequerida() {
		return km / tiempoMax
	}
	method puedeSatisfacer(coche) {
		return coche.velocidadMax() >= km and coche.capacidad() == cantDePasajeros and not coloresIncompatibles.contains(coche.color())
	}
	
	method acelerar() {
		tiempoMax = tiempoMax - 1
	}
	method relajar() {
		tiempoMax = tiempoMax + 1
	}
}
