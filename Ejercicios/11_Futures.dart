//Futures
//Son un acuerdo de que en el futuro
//Tendras valor ára el usado

void main() {
  print("Inicio del Programa");
  httpGet("SAL").then(value)){
    print(value);
  }
  print("Fin del Programa");
}

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 2), ()){
    return "Respuesta Petición HTTP";
  }
}
