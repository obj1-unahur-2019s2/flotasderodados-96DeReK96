import Rodados.*

class Dependencia {
	const flota = []
	var property empleados
	const pedidos = []
	
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
		return flota.filter({ coche => coche.color() == unColor }).sum({coche => coche.capacidad()})
	}
	method colorDelRodadoMasRapido() {
		return flota.max({ coche => coche.velocidadMax()}).color() 
	}
	method capacidadFaltante() {
		return empleados - self.capacidadFlota()
	}
	method capacidadFlota() {
		return flota.sum({coche => coche.capacidad()})
	}
	method esGrande() {
		return empleados >= 40 and flota.size() >= 5
	}
	method pedidosMalos() {
		return pedidos.filter({pedido => not flota.any({ josecito => pedido.puedeSatisfacer(josecito)})})
	}
	
	method loPuedeHacerAlguno(pedido) {
		return flota.any({ josecito => pedido.loPuedeHacer(josecito)})
	}
	
	method esColorImposible(color) {
		return pedidos.all({ pedido => pedido
			//el color que esta en colores incompatibles
		})
	}
	method relajarPedidos() {
		pedidos.forEach({pedido => pedido.relajar() })
	}
}
