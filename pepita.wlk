object manzana{
	var gradoDeMadurez = 1
	
	method estaEnBuenEstado(){
		return gradoDeMadurez >= 1 && gradoDeMadurez < 3
	}

	method energiaQueAporta(){
		if(self.estaEnBuenEstado()){
			return gradoDeMadurez * 20
		}else{
			return 0
		}
	}

	method madurar(){
		gradoDeMadurez = gradoDeMadurez + 1
	}

	
}

object alpiste{
	method energiaQueAporta(){
		return 25
	}
}

object pepita{
	var energia = 100
	
	method volar(metros){
		self.validarVolar(metros)
		energia = self.energiaAlVolar(metros)
	}

	method validarVolar(metros){
		if(self.energiaAlVolar(metros) < 0){
			self.error("no puede volar porque no tiene suficiente energia")
		}
	}

	method energiaAlVolar(metros){
		return (energia - 10 - metros / 10)
	}

	method descansar(){
		energia = energia + 10
	}

	method estaCansada(){
		return energia < 30
	}

	method comer(alimento){
		self.validarComer(alimento)
		energia = energia + alimento.energiaQueAporta()
	}
}

object pepon{
	var energia = 30

	method comer(alimento){
		energia = energia + (alimento.energiaQueAporta()) / 2
	}

	method volar(kilometros){
		energia = energia - 20 - (2 * kilometros) 
	}

	method estaCansado(){
		return energia < 34
	}
}

object rebeca{
	var mascota = pepita
	var vecesQueAlimentoAEstaAve = 0

	method entrenar(ave){
		mascota = ave
		vecesQueAlimentoAEstaAve = 0 
	}

	method alimentar(alimento){
		mascota.comer(alimento)
		vecesQueAlimentoAEstaAve = vecesQueAlimentoAEstaAve + 1
	}

	method cenas(){
		return vecesQueAlimentoAEstaAve
	}
}

/*
pepita.volar(200)
pepita.estaCansada()
pepita.volar(350)
pepita.estaCansada()
pepita.descansar()
pepita.estaCansada()

pepita.volar(900)
pepita.comer(alpiste)
pepita.comer(alpiste)
pepita.estaCansada()


pepita.comer(alpiste)
pepita.comer(manzana)
pepita.estaCansada()
pepita.volar(100)
pepita.comer(manzana)

manzana.madurar()
pepita.comer(manzana)
pepita.volar(50)
pepita.estaCansada()
manzana.energiaQueAporta()
manzana.madurar()
manzana.energiaQueAporta()
pepita.comer(manzana)
pepita.estaCansada()

pepon.estaCansado()
pepon.comer(alpiste)
pepon.estaCansado()
pepon.volar(3)
pepon.estaCansado()


-las consultas devuelven resultados sin modificar el estado, mientras que las órdenes ejecutan acciones que modifican el estado.

//consultas
pepita.estaCansada()
pepon.estaCansado()
manzana.energiaQueAporta()
manzana.estaEnBuenEstado()
alpiste.energiaQueAporta()
rebeca.cenas()

//órdenes

pepita.volar(metros)
pepita.descansar()
pepita.comer(alimento)
manzana.madurar()
rebeca.entrenar(ave)
rebeca.alimentar(alimento)


2.a

Primer caso:

El mensaje polimórfico es energiaQueAporta().
Lo envían Pepita y Pepón al objeto que reciben como parámetro alimento.
alimento puede referirse a distintos objetos que aportan energía, en este caso alpiste o manzana.

Segundo caso:

El mensaje polimórfico es comer(alimento).
Lo envía Rebeca al objeto que tiene como mascota, que puede ser Pepita o Pepón.
El parámetro del método es alimento.

2.b
Alimento
Ave

2.d
El tipo Alimento lo implementan manzana y alpiste.
El tipo Ave lo implementan pepita y pepon.
*/
