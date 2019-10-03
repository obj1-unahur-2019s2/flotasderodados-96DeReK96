class Corsa {
	var property color
	method capacidad() {
		return 4
	}
	method velocidadMax() {
		return 150
	}
	method peso() {
		return 1300
	}
}
object rojo {}
object azul{}
object verde{}
object beige{}
object negro{}
object amarillo{}

class Kwid {
	var property tieneTanqueAdicional
	method capacidad() {
		return if(not tieneTanqueAdicional) {
			4
		} else {
			3
		}
	}
	method velocidadMax() {
		return if(tieneTanqueAdicional) {
			120
		} else {
			110
		}
	}
	method peso() {
		return if(tieneTanqueAdicional) {
			1350
		} else {
			1200
		}
	}
	method color() {
		return azul
	}
}

class AutoEspecial {
	var property capacidad
	var property velocidadMax
	var property peso
	var property color 
}

object trafic {
	var property interior = interiorComodo
	var property motor = motorPulenta
	const pesoDelBase = 4000
	method capacidad() {
		return interior.capacidad()
	}
	method velocidadMax() {
		return motor.velocidadMax()
	}
	method peso() {
		return pesoDelBase + interior.peso() + motor.peso()
	}
	method color() {
		return "blanco"
	}
}

object interiorComodo {
	method capacidad() {
		return 5
	}
	method peso() {
		return 750
	}
}

object interiorPopular {
	method capacidad() {
		return 12
	}
	method peso() {
		return 1000
	}
}

object motorPulenta {
	method peso() {
		return 800
	}
	method velocidadMax() {
		return 130
	}
}

object motorBataton {
	method peso() {
		return 500
	}
	method velocidadMax() {
		return 80
	}
}