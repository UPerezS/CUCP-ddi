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

Stream<int> emitNumbers() async* {
  final valuesToEmit = [1,2,3,4,5];
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    //Cede un Valor
    yield i;
  }
}