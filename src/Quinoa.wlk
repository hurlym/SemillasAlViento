import Planta.*
class Quinoa inherits Planta {
	
	var property cuantoSolTolera =0 
	
	override method espacioQueOcupa(){
		return 0.5
	} 
	
	override method daSemillas(){
		return anioObtencion < 2005 or super()
	} 
	
	override method parcelaIdeal(parcela){
		return not parcela.Plantas().Any({planta=>planta.altura()>1.5})
	}
	
}
