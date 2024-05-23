void main() {
  
  print(saludar());
  print(greetEveryone());
  print(agregarNumeros(5, 5));
  print(agregarDosNumerosOpcional(4));
  print(greetPerson(message: 'Hello', name: 'Eric'));
  print(greetPerson(name: 'Eric'));
  
}

String saludar() {
  return "Hola a todos";
}

// lambda
String greetEveryone() => "Hello Everyone";

int agregarNumeros(int a, int b) {
  return a + b;
}

// TO DO: convertir la función a lambda, se debe de llamar "addTwoNumbers"

// Variables opcionales
int agregarDosNumerosOpcional(int a, [int? b /*int b = 0*/]) {
  // b = b ?? 0;
  b ??= 0;
  
  return a + b;
}

// Variables por referencia
String greetPerson({ required String name, String? message = 'Hola' }) {
  return '$message, $name';
}