import parcelas.*

class Plantas{
	const property anioObtencion
	const property altura
	
method horasAlSol()
	
method esFuerte()= 10 > self.horasAlSol()
	
method daSemillas()= self.esFuerte()

method esParcelaIdeal(parcela)
	
}

class Menta inherits Plantas{
	
override method horasAlSol(){return 6} 
	
override method daSemillas()= super() and altura > 0.4
	
method espacioOcupa()= altura * 3

override method esParcelaIdeal(parcela)= parcela.superficie() > 6
	
}

class Soja inherits Plantas{
	
override method horasAlSol(){
	return if(altura < 0.5){
	   6 }
    else if(altura.between(0.5,1)){
	   	 7}
	else if(altura > 1){
	  	 9
	  }
	}
	
override method daSemillas()= super() and anioObtencion >= 2007 and altura > 1
	
method espacioOcupa()= altura / 2

override method esParcelaIdeal(parcela)=parcela.horasAlSol() == self.horasAlSol()

}

class Quinoa inherits Plantas{
   var property horasDeSol
	
override method horasAlSol(){return horasDeSol}
	
method espacioOcupa()= 0.5
	
override method daSemillas()= super() and anioObtencion < 2005

override method esParcelaIdeal(parcela)= parcela.any{plant =>plant.altura() < 1.5 }


	
}

class SojaTransgenica inherits Soja{
	
override method daSemillas(){return false}
	
override method esParcelaIdeal(parcela)= parcela.cantidadMaxima() == 1

}

class Hierbabuena inherits Menta{
	
	override method espacioOcupa()= super() * 2
	
}
	
