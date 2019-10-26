import Soja.*

class SojaTransgenica inherits Soja{
	
	override method daSemillas(){
		return false
	} 
	
	override method parcelaIdeal(parcela){
		return parcela.cantMaxima()== 1
		
	}
}
