import mariano.*

object frutilla {

  method cambiarSabor () = chocolate

}

object chocolate {

  method cambiarSabor () = naranja

}

object naranja {

  method cambiarSabor () = frutilla

}

object vainilla {

  method cambiarSabor () {

  }

}

object melón {
    method cambiarSabor () {

  }
}


class Bombon {

  var peso = 15

  method precio () = 5

  method peso () = peso

  method peso(cantidad) {
    peso = cantidad
  }

  method sabor () = frutilla

  method libreGluten () = true

  method mordisco () {
    peso = (peso * 0.8) - 1
  }

}


class Alfajor {

    var peso = 300

  method precio () = 12

  method peso () = peso

  method peso(cantidad) {
    peso = cantidad
  }

  method sabor () = chocolate

  method libreGluten () = false

  method mordisco () {
    peso = (peso * 0.8)
  }

}



class Caramelo {

  var peso = 5

  method precio () = 1

  method peso () = peso

  method peso(cantidad) {
    peso = cantidad
  }

  method sabor () = frutilla

  method libreGluten () = true

  method mordisco () {
    peso = peso - 1
  }

}


class Chupetin {

  var peso = 7

  method precio () = 2

  method peso () = peso

  method peso(cantidad) {
    peso = cantidad
  }

  method sabor () = naranja

  method libreGluten () = true

  method mordisco () {
    peso = if (peso > 2) peso * 0.9 
  }

}


class Oblea {

  var peso = 250

  method precio () = 5

  method peso () = peso

  method peso(cantidad) {
    peso = cantidad
  }

  method sabor () = vainilla

  method libreGluten () = false

  method mordisco () {
    peso = if (peso > 70) peso * 0.5 else peso * 0.75 
  }

}


class Chocolatin {

  var peso = 0
  var pesoIncial = 0

  method precio () = 0.5 * pesoIncial

  method peso () = peso

  method pesoInicial(cantidad) {
    pesoIncial = cantidad
    peso = cantidad
  }

  method sabor () = chocolate

  method libreGluten () = false

  method mordisco () {
    peso = peso - 2
  }

}

class GolosinaBañada {

  var golosinaBase = Chocolatin

  var pesoBaño = 4

  method golosinaBase (unaGolosina) {
    golosinaBase = unaGolosina
  }
  
  method precio () = golosinaBase.precio() + 2

  method peso () = golosinaBase.peso() + pesoBaño

  method sabor () = golosinaBase.sabor()

  method libreGluten () = golosinaBase.libreGluten()

  method mordisco () {
    golosinaBase.mordisco()
    pesoBaño = (pesoBaño - 2).max(0)
  }

}


class Tutifrutti {

  var peso = 5

  var sabor = chocolate

  var libreGluten = true
  
  method precio () = if(self.libreGluten()) 7 else 10 

  method peso () = peso

  method peso (cantidad) {
    peso = cantidad
  }

  method sabor () = sabor

  method libreGlutenCambiarANo () {

      libreGluten = false
  }

  method libreGluten () = libreGluten

  method mordisco () {
    
    sabor = sabor.cambiarSabor()
  
  }

}
