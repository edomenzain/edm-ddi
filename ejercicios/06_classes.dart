void main() {
  
  // final Hero wolverine = Hero("wolverine", "Otro");
  
  // print(wolverine);
  // print(wolverine.name);
  // print(wolverine.power);
  
  // TO DO: Generar otro superheroe sin poder
  // y mostrar el nombre y el poder en consola
  
}

class Hero {
  String name;
  String power;
  
  Hero({
    required this.name,
    this.power = 'Sin Poder'
  });
  
  // Hero(this.name, this.power);
  
  // Hero(String pName, String pPower)
  //   : name = pName,
  //     power = pPower;
  
  @override
  String toString() {
    return '$name - $power';
  }
  
  
}