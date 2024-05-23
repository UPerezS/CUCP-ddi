//Futures
//Son un acuerdo de que en el futuro
//Tendras valor ára el usado

void main() async {
  print("Inicio del Programa");
  
  try {
    final value = await httpGet("http://");
    print(value);
  } on Exception catch(err) {
    print("Exception: $err");
  } catch(err) {
    print("Error General: $err");
  } finally {
    print("Entra al Bloque Finally");
  }
  
  print("Fin del Programa");
}

Future<String> httpGet(String url) async {
  throw Exception("Ho Hay parametros en la URL");
  //wait Future.delayed(const Duration(seconds: 2));
    //return 'Respuesta HTTP';
}
