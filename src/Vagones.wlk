class VagonDePasajeros {
	const largo
	const ancho
	var property tieneBanios
	var estaOrdenado
	
	method cantidadDePasajeros() = 
		if(ancho <= 3) {8 * largo} else {10 * largo} - if(estaOrdenado) 0 else 15
		
	method carga() = if(tieneBanios) 300 else 800
	
	method pesoMaximo() = 2000 + 80 * self.cantidadDePasajeros() + self.carga()
	method esPopular() = self.cantidadDePasajeros() > 50
	method recibirMantenimiento() {
		estaOrdenado = true
	}
	method esDePasajeros() = true 
	
}

class VagonDeCarga {
	const cargaMaximaIdeal
	var maderasSueltas
	
	method carga() = cargaMaximaIdeal - 400 * maderasSueltas
	method cantidadDePasajeros() = 0
	method tieneBanios() = false
	
	method pesoMaximo() = 1500 + self.carga()
	method esPopular() = false
	method recibirMantenimiento() {
		maderasSueltas = 0.max(maderasSueltas - 2)
	}
	method esDePasajeros() = false
	
}

class VagonDormitorio {
	const cantidadDeCompartimientos
	var camasPorCompartimiento
	
	method cantidadDePasajeros() = cantidadDeCompartimientos * camasPorCompartimiento
	method tieneBanios() = true	
	method carga() = 1200
	method pesoMaximo() = 4000 + 80 * self.cantidadDePasajeros() + self.carga()
	method esPopular() = self.cantidadDePasajeros() > 50
	method recibirMantenimiento() {}
	method esDePasajeros() = true 
}
