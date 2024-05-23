void main() {
  final Hero regulus = new Hero(name: 'sabritas');
  print(regulus.name);
  print(regulus.power);
}

class Hero {
  String name;
  String power;
  
  Hero({required this.name, this.power = 'Sin Power'});
  
  /*
  Hero(this.name, this.power);
  Hero(String pName, String pPower): name = pName, power = pPower;
  
  @override
  String toString(){
    return '$name - $power';
  }*/
  
}