import huevosDePascua.*

object ana {

    const huevosComidos = []
  
    method comer(unHuevo) {
        huevosComidos.add(unHuevo)
    }

    method estaEnfermo() = self.consumioMasDe5000Calorias() || self.algunoDeChocoBlanco()

    method algunoDeChocoBlanco() = huevosComidos.any({h => h.esDeChocolateBlanco()}) 
    method consumioMasDe5000Calorias() = huevosComidos.sum({h => h.calorias()}) > 5000 
}


object jose {
  
    var ultimoHuevoComido = huevoMixto  

    method comer(unHuevo) {
      ultimoHuevoComido = unHuevo
    }

    method estaEnfermo() = ultimoHuevoComido.esDeChocolateAmargo()

}

object tito {
  method comer(unHuevo) {}
  method estaEnfermo() = false 
}