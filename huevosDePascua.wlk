object huevoRepostero {
    method calorias() = 750
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false   
}

object huevoMixto {
    method calorias() = 900
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = true
}

object conejo {

    var property peso = 5
    method calorias() = peso * 10
    method esDeChocolateBlanco() = false
    method esDeChocolateAmargo() = true
}

object blisterHuevitos {
    var property huevitos = 3
    method calorias() = huevitos * 100 + huevitos.div(5) * 150
    method esDeChocolateBlanco() = huevitos >= 5
    method esDeChocolateAmargo() = false    
}

object matrioshka {
    var property calorias = 3000 + decoracion.caloriasDecoracion()
    var property huevoEnSuInterior = huevoMixto
    var property decoracion = flor
    method esDeChocolateBlanco() = huevoEnSuInterior.esDeChocolateBlanco()
    method esDeChocolateAmargo() = true   
}

object flor {
    var property cantidadDePetalos = 5 
    method caloriasDecoracion() = cantidadDePetalos * 100
}

object arbol {
  method caloriasDecoracion() = 150
}
