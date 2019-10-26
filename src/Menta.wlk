import Planta.*
class Menta inherits Planta {
	
	
	override method cuantoSolTolera(){
		return 6
	}
	
	override method parcelaIdeal(parcela){
		return parcela.cantSuperficie() > 6
	}
	
	override method daSemillas(){
		return altura > 0.4 or super()
	} 
	
	override method espacioQueOcupa(){
		return altura *3
	} 
	
	
	
	
}
