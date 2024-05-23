

// una clase abstracta no se puede instancias como si misma
// es un molde para crear otro molde
// Pueden crear funciones sin implementación
void main() {
  final plantaViento = PlantaViento(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 9);
  
  print('Viento: ${ cargarBateria(plantaViento) }');
  print('Nuclear: ${ cargarBateria(plantaNuclear) }');
}

double cargarBateria(PlantaEnergia planta) {
  if (planta.cantidadEnergia < 10) {
    throw Exception('Sin energia suficiente');
  }
  
  return planta.cantidadEnergia - 10;
}

enum TipoPlanta {
  viento,
  agua,
  nuclear
}

abstract class PlantaEnergia {
  
  double cantidadEnergia;
  final TipoPlanta tipo;  // agua, viento (nuclear, etc...)
  
  PlantaEnergia({
    required this.cantidadEnergia,
    required this.tipo
  });
  
  void consumirEnergia(double cantidad);
  
}

// extends or implements
// Extends: Extender o heredar de una clase
class PlantaViento extends PlantaEnergia {
  
  PlantaViento({ required double energiaInicial })
    : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);
  
  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}
 
class PlantaNuclear implements PlantaEnergia {
  
  @override
  double cantidadEnergia;
  
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;
  
  PlantaNuclear({ required double this.cantidadEnergia });
  
  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
  
}