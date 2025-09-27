import chicos.*
import huevosDePascua.*

object caceria {
    const huevosEncontrados = []
    const huevosNoEncontrados = []

    method inicializarJuego(){
        blisterHuevitos.huevitos(14)
        flor.cantidadDePetalos(7)
        matrioshka.decoracion(flor)
        matrioshka.huevoEnSuInterior(blisterHuevitos)
        huevosNoEncontrados.addAll([matrioshka,huevoRepostero,conejo,huevoMixto])
    }  

    method cuantosFaltanEncontrar() = huevosNoEncontrados.size()
    method cuantosDeChocolateBlanco() = huevosNoEncontrados.count({h => h.esDeChocolateBlanco()})

    method aunNoFueEncontrado(unHuevo) = huevosNoEncontrados.contains(unHuevo)
    method encontrarHuevoPor(unChico, unHuevo) {
        unChico.comer(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }  
    method encontrarPrimerHuevoPor(unChico) {
        self.encontrarHuevoPor(unChico, huevosNoEncontrados.first())
    }

    method encontrarTodosLosRestantes(unChico) {
        huevosNoEncontrados.forEach({h => self.encontrarHuevoPor(unChico, h)})
    }

    method huevosDeChocoBlancoFaltantes() = huevosNoEncontrados.filter({h => h.esDeChocolateAmargo()}) 

    method huevoConMayorCaloriaFaltante() = huevosEncontrados.max({h => h.calorias()}) 

}