void main() {
  
  final Map<String, dynamic> rawJson = {
    "name": "uriel",
    "power": "nada",
    "isAlive": true
  };
  
  final spiterman = Hero.fromJson(rawJson);
  print(spiterman);
  final other = Hero( power:'none', name:'Other', isAlive:false);
  
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({required this.name, required this.power, required this.isAlive});
  
  Hero.fromJson(Map<String, dynamic> json) : 
                name = json['name'] ?? 'No Name Found',
                power = json['power'] ?? 'No Name Found',
                isAlive = json['isAlive'] ?? 'No Name Found';
  
  @override
  String toString(){
    return '$name, $power, ${isAlive ? 'YES' : 'NO'}';
  }
  
  
}