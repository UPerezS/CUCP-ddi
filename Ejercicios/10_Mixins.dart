void main() {
  final delfin = Delfin();
  delfin.nadar();
  
  final pato = Pato();
  pato.caminar();
  pato.nadar();
  pato.volar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Bird extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar()=> print("Estoy Volando Wiiii");
}

mixin Caminante {
  void caminar()=> print("Estoy Caminando Wiiii");
}

mixin Nadador {
  void nadar()=> print("Estoy Nadando Wiiii");
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Mamifero with Caminante, Volador{}
class Pato extends Mamifero with Caminante, Nadador, Volador{}

class Tiburon extends Mamifero with Nadador{}
class PezVolador extends Mamifero with Nadador, Volador{}
