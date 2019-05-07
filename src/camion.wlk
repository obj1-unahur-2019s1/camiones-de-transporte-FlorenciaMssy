import cosas.*

class Camion {
	const property cosas = []
	
	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}
		
	method pesoTotal() {
	return cosas.sum({cosa => cosa.peso()})+1000
	}
	
	method excedidoDePeso() {
		return self.pesoTotal() > 2500
	}
	
	method objetosPeligrosos(nivel){
	return cosas.filter({cosa => cosa.nivelPeligrosidad() > nivel})
	}

	method objetoMaspeligrosoQue(cosa){
	return self.objetosPeligrosos(cosa.nivelPeligrosidad())                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {
	return cosas.all({cosa => cosa.nivelPeligrosidad() < nivelMaximoPeligrosidad})
	}
	
	method tieneAlgoQuePesaEntre(min, max){
	return cosas.any({cosa => cosa.peso().between(min,max)})
	}
	
	/*method cosaMasPesada(){
	return  
	}/* */
}