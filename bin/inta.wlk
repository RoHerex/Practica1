import parcelas.*
import example.*

class Inta{
	const parcelas = []
	
method agregarParcela(parcela){
  parcelas.add(parcela)}

method cantidadPlantasPorParcela(parcela){
  return parcelas.sum{p => p.plantas().size()}/ parcela.size()}
   
method masAutosutentable(){  
		
	const espacioMas4 = parcelas.filter{p => p.plantas().size() > 4}
	
	espacioMas4.max{p => p.esBienAsociada()}
	
	}
}