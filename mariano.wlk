import golosinas.*

object mariano {

    const bolsaGolosinas = []

    method comprar (unaGolosina) {
        bolsaGolosinas.add(unaGolosina)
    }

    method desechar (unaGolosina) {
        bolsaGolosinas.remove(unaGolosina)
    }

    method cantidadDeGolosinas() = bolsaGolosinas.count()

    method tieneLaGolosina (unaGolosina) = bolsaGolosinas.contains (unaGolosina)

    method probarGolosinas () = bolsaGolosinas.forEach({unaGolosina => unaGolosina.mordisco()})

    method hayGolosinaSinTacc () = bolsaGolosinas.any({unaGolosina => unaGolosina.libreGluten()})

    method golosinaDeSabor(unSabor) = bolsaGolosinas.find({unaGolosina => unaGolosina.sabor() == unSabor})

    method golosinasDeSabor(unSabor) = bolsaGolosinas.filter({unaGolosina => unaGolosina.sabor() == unSabor})

    method sabores () = bolsaGolosinas.map({unaGolosina => unaGolosina.sabor()}). asSet() // ver capaz está mal

    method golosinaMasCara () = bolsaGolosinas.max({unaGolosina => unaGolosina.precio()})

    method pesoGolosinas () = bolsaGolosinas.sum({unaGolosina => unaGolosina.peso()})

    method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(bolsaGolosinas.asSet())

    method gustosFaltantes(gustosDeseados) = gustosDeseados.difference(self.sabores ())
}