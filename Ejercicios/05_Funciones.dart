void main() {
  print(saludar());
  print(greatEveryone());
  print(agregarNumeros(1,1));
  print(agregarDosNumerosOpcionales(2));
  print(saludarPersona(message:'Hola',name:'Uriel'));
}

String saludar(){
  return "Hola a Todos";
}

String greatEveryone() => "Hello Everyone";

int agregarNumeros(int a, int b){
  return a + b;
}

//Convert function to lambda, called addTwoNumbers
int addTwoNumbers(int a, int b)=> a + b;

int agregarDosNumerosOpcionales(int a, [int b = 0 /* [int? b */]){
  return a + b;
}

String saludarPersona({required String name, String? message = 'Hola'}){
  return '$message $name';
}