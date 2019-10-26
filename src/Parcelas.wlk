
class Parcelas {
	var property ancho
	var property alto
	
	var property hsSol
	var property esEcologica 
	
	const property Plantas = []
	
	method cantSuperficie(){
		return ancho * alto
	}
	
	method cantMaxima(){
		if(ancho > alto)
		{
			return self.cantSuperficie() / 5
		}
		else
		{
			return self.cantSuperficie() / 3
		}
	}
	
 method tieneComplicaciones(){
 	return Plantas.all({plant=>plant.cuantoSolTolera()<hsSol})
 }
 
 method plantar(planta){
 	
 	if(not self.hayCapacidad()){
 		self.error("No se puede plantar la porque se ha superado el numero maximo de plantas")
 	}
 	if(not self.soportaSol(planta))
 	{
 		self.error("No se puede plantar ya que la planta no soporta el sol de la parcela")
 	}
 	else{
 		Plantas.add(planta)
 	}
 	
 }
 
 method hayCapacidad(){
 	return Plantas.size()+1 <= self.cantMaxima()
 }
 method soportaSol(planta){
 	
 	return (planta.cuantoSolTolera()+2>hsSol)
 }
 
 method seAsociaBien(planta){
		if(esEcologica)
		{
			return not self.tieneComplicaciones() and planta.parcelaIdeal(self)
		}
		else
		{
			return Plantas.size() <= 2 and planta.esFuerte()
		}
		
}

method cantPlantasQueSeAsocianBien(){
	return Plantas.count{planta=>self.seAsociaBien(planta)}
}
	
}
