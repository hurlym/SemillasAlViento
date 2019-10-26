class Planta {
	
	var property anioObtencion
	var property altura
	
	
	
	method cuantoSolTolera()
	method espacioQueOcupa()
	method parcelaIdeal(parcela)
	
	method esFuerte(){
		return (self.cuantoSolTolera() > 10)
	}
	
	
	method daSemillas()
	{
		return self.esFuerte()
	}
	
	
	
	
	
	
	
}
