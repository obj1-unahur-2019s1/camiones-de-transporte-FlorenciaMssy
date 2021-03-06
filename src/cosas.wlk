object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 } 
}
object paqueteDeLadrillos {
	var property cantidad = 0
	const property precioUnitario = 2
	method peso() {return self.precioUnitario()*2}
	method nivelPeligrosidad() {return 2}
}

object arenaAGranel {
	var property peso = 0
	method nivelPeligrosidad() {return 1}
	
}

object bateriaAntiaerea{
	var property tieneMisiles = true
	method peso() {
		if (tieneMisiles){return 300}
		else {return 200}
}
	method nivelPeligrosidad() {
		if(tieneMisiles) {return 100}
		else {return 0}
	}
	}
object contenedorPortuario {
	var cosasContenedor = [bumblebee]
	method peso() {
		return cosasContenedor.sum({cosa => cosa.peso()})+100
	}
	method nivelPeligrosidad() {
		if(cosasContenedor.size()==0) {return 0}
		else {
		return cosasContenedor.max({cosa => cosa.nivelPeligrosidad()}).nivelPeligrosidad()
		}
	}
	}
	
object residuosRadioactivos{
	var property cantidad = 0
	method peso(){return self.cantidad()}
	method nivelPeligrosidad() {return 200}
}

object embalajeDeSeguridad{
	var cosas = 0
	method embalar(cosa) {cosas = cosa}
	method peso() {return cosas.peso()}
	method nivelPeligrosidad() {return cosas.peso()/2}
	}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}
