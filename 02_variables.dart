void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor', 'kongo'];
  final sprites = <String>['dito/front.png', 'dito/back.png'];

  // dynamic null
  dynamic errorMessage = 'hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  hp: $hp
  alive: $isAlive  
  abilities: ${abilities.map((ability) => ability.toUpperCase()).toList()}
  sprites: $sprites
  $errorMessage
  """);
}
