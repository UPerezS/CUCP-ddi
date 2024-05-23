//Streams
//Son Flujos de Información que Pueden
//Estar Emitiendo Valores Periodicamente
//Una vez o Nunca

//Son como el flujo de agua (el flujo es el stream)
//pueden cerrarse o abrirse

void main() {
  emitNumbers().listen((value){
    print('Emitio: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value){
    return value;
  }).take(5);
}