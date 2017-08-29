import ciudades.*

//PUNTO 5
object region {
	var ciudades = #{springfield, albuquerque}

	method masProductoras(){
		return ciudades.map({ciudad => ciudad.masProductora()})
	}
}