//Una clase abstracta no se ouede instanciar 
//como si misma
//En un molde para crear otro molde
//puede crear funciones sin implementación

void main() {
  final plantaViento = PlantaAire(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 10);
  print("Viento:  + $cargarBateria(plantaViento.cantidadEnergia)");
  print("Nuclear:  + $cargarBateria(plantaNuclear.cantidadEnergia)");
}

double cargarBateria(PlantaEnergia planta){
  if(planta.cantidadEnergia < 18)
      throw Exception("Sin Energia");
    return planta.cantidadEnergia = 10;
  
}

enum TipoPlanta {
  viento,
  agua,
  nuclear
}

abstract class PlantaEnergia {
  double cantidadEnergia;
  final TipoPlanta tipo; //Agua, Viento (nuclear, etc...)
  
  PlantaEnergia({ 
    required this.cantidadEnergia, 
    required this.tipo 
    });
    
    void consumirEnergia(double cantidad);
}

//extends or implements
//extends: Extender o Heredar de una Clase
//implements: 

class PlantaAire extends PlantaEnergia {
  
  PlantaAire({
    required double energiaInicial
  }) : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);
  
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia -= cantidad;
  }
  
}

class PlantaNuclear implements PlantaEnergia {
  
  @override
  double cantidadEnergia;
  
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;
  
  PlantaNuclear({ 
    required double this.cantidadEnergia
  });
  
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia -= cantidad;
  }
  
}


