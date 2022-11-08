import example.*

class Parcela{
	const property ancho
	const property largo
	const property horasAlSol
	const property plantas = []
	
	
method superficie()= ancho * largo

method cantidadMaxima(){
	return if(ancho > largo){
	self.superficie() / 5
	}else{
	self.superficie() / 3 + largo
	}
  }
  
method tieneComplicaciones(){
	return plantas.any{plant => plant.horasAlSol() < horasAlSol}
 }  
method agregarPlanta(plantita){
	if(self.superaElLimite()  or horasAlSol < 2){
	plantas.add(plantita)
   }else{
   	self.error("no hay espacio para mas plantas")
   }
}

method superaElLimite(){return plantas.size() + 1 < self.cantidadMaxima()}}

class ParcelaEcologica inherits Parcela{
	
method esIdeal(planta){
	return planta.esParcelaIdeal(self) and not self.tieneComplicaciones()}
	
method esBienAsociada(){
	return plantas.count{p => p.esIdeal(p)} * plantas.size() / 100
}	
	
}

class ParcelaIndustrial inherits Parcela{
	
method esIdeal(planta){
	return planta.esFuerte() and plantas.size() <= 2
  }
  
method esBienAsociada(){
	return plantas.count{p => p.esIdeal(p)}  * plantas.size() / 100
}  
}