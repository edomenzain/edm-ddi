// Streams
// Son flujos de información que pueden
// estar emitiendo valores periodicamente
// una vez o nunca.

// Son como el flujo de agua (el flujo es el stream)
// puede cerrarse o abrirs.
void main() {
  
  emitNumbers().listen( (value) {
    print('emit: $value');
  });
  
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}