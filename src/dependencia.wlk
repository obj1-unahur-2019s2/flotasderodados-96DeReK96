import Rodados.*

class Dependencia {
	const flota = []
	var property personas
	
	method agregarAFlota(rodado) {
		flota.add(rodado)
	}
	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	method pesoTotalFlota() {
		return flota.sum({ coche => coche.peso() })
	}
	method estaBienEquipada() {
		return flota.size() >= 3 and flota.all({cosa => cosa.velocidadMax() >= 100})
	}
	method capacidadTotalEnColor(unColor) {
		return flota.filter({ coche => coche.color() == unColor.color() }).sum({coche => coche.capacidad()})
	}
	method colorDelRodadoMasRapido() {
		return flota.max({ coche => coche.velocidadMax()}).color() 
	}
}
