import Planta.*

class Soja inherits Planta {
	
	override method cuantoSolTolera(){
		if(altura < 0.5){
			return 6
		}
		else if(altura <=1 ){
			return 7
		}
		else{
			return 9
		}
	}
	
	override method daSemillas(){
		return (anioObtencion > 2007 and altura > 1) or super()
	} 
	
	override method espacioQueOcupa(){
		return altura / 2
	} 
	
	override method parcelaIdeal(parcela){
		return self.cuantoSolTolera() == parcela.hsSol()
		
	}
	
	
}
