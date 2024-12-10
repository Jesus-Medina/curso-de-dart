void main() {
  
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Telarañas',
    'isAlive': true
  };
  
 
  final Hero ironMan = Hero (
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  );
 
  
  final Hero spiderman = Hero.fromJson( rawJson );
  
  print(ironMan);
  print(spiderman);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json )
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString(){
    return """
    nombre | poder | esta vivo?
    $name - $power - ${isAlive ? 'YES!' : 'Nope'}
    """;
  }
}