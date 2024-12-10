void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, required this.power});

  /* Otra forma de crear un constructor
    Hero(String pName, String pPower) 
    : this.name = pName,
      this.power = pPower;
  */

  @override // @override sobreescribe la configuracion por defecto
  String toString() {
    return '$name - $power';
  }
}
