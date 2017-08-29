import centrales.*

object springfield {
	var necesidadEnergetica
	var centrales = #{burns, exBosque, elSuspiro}
	const velocidadViento = 10

	//PUNTO 2
	method centralesContaminantes(){
		return centrales.filter({central => central.contamina()})
	}

	//PUNTO 3
	method cubrioNecesidades(){
		return self.sumaDeProducciones(centrales) > necesidadEnergetica
	}
	
	//PUNTO 4
	method estaEnElHorno(){
		return self.produccionDeLasContaminantes() > (1.50 * necesidadEnergetica) || self.todasSonContaminantes()
	}	
	
	method produccionDeLasContaminantes(){
		return self.sumaDeProducciones(self.centralesContaminantes())
	}

	method todasSonContaminantes(){
		return centrales.all({central => central.contamina()})
	}
	
	method sumaDeProducciones(listaDeCentrales){
		return listaDeCentrales.sum({central => central.produccion()})
	}
	
	method masProductora(){
		centrales.max({central => central.produccion()})
	}	
	
	//SETTERS/GETTERS
	method necesidadEnergetica(kwh){
		necesidadEnergetica = kwh
	}
	
	method velocidadViento(){
		return velocidadViento
	}
}

object albuquerque{
	var caudal = 150
	var centrales = #{hidroelectrica}
	
	method caudal(){
		return caudal
	}
	
	method masProductora(){
		centrales.max({central => central.produccion()})
	} //Abstraccion?
}