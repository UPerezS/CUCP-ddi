//Futures
//Son un acuerdo de que en el futuro
//Tendras valor ára el usado

void main() async {
  print("Inicio del Programa");
  final value = await httpGet("http://");
  print(value);
  print("Fin del Programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
    return 'Respuesta HTTP';
}
