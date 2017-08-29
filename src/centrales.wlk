import ciudades.*

object burns {
	var varillas
	
	method produccion() {
		return 0.1 * varillas
	}
	
	method contamina() {
		return varillas > 20
	}
	
	method varillas(cantidadDeVarillas){
		varillas = cantidadDeVarillas
	}
}

object exBosque {
	var capacidad
	
	const riquezaSuelo = 0.9
	
	method produccion(){
		return 0.5 + riquezaSuelo * capacidad
	}
	
	method contamina() {
		return true
	}
	
	method capacidad(unaCapacidad){
		capacidad = unaCapacidad
	}
}

object elSuspiro {
	var produccionPorTurbinas = [0.2 * self.velocidadViento()] //
	
	method produccion(){
		return produccionPorTurbinas.sum()
	}
	
	method velocidadViento(){
		return springfield.velocidadViento()
	}
	
	method contamina() {
		return false	
	}
	
	method agregarTurbina(produccionDeLaTurbina){
		produccionPorTurbinas.add(produccionDeLaTurbina)
	}

}

//PUNTO 5
object hidroelectrica {
	
	method produccion(){
		return 2 * albuquerque.caudal()
	}
}
