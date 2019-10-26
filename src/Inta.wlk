import Parcelas.*

object inta {
	
	const parcelas = []
	
	method promedioPlantas(){
		return (parcelas.sum{parcela=>parcela.Plantas().size()})/parcelas.size()
	}
	
	method parcelaMasAutosustentable(){
		
		return self.parcelasConMasDeCuatroPlantas().max{parcela=>parcela.cantPlantasQueSeAsocianBien()}
	}
	
	method parcelasConMasDeCuatroPlantas(){
		return parcelas.filter{parcela=>parcela.Plantas().size() > 4}
	}
	
}
