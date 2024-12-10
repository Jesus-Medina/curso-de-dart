void main(){
  
  print(greetEveryone());
  
  print('resultado de la suma es: ${addTwoNumbers(1,2)}');
  
  print('resultado de la suma opcional es: ${addTwoNumbersOptional(1)}');
  
  print( readPerson(name: 'Juan') );
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [ int b = 0] ){
  return a + b;
} 

String readPerson({ required String name, String message = "Hola,"}){
  return '$message $name';
}