void main(){
  
  final List<int> numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List original: $numbers');
  print('Lenght of List original: ${numbers.length}');
  print('First of List original: ${numbers[0]}');
  print('First of List original: ${numbers.first}');
  print('Last of List original: ${numbers.last}');
  
  /* 
    al hacer la funcion reversed nuestra lista numbers 
    pasa a ser un Iterable por la funcion reversed, el 
    cual si deseamos recuperar lo debemos convertir
    en un List con la funcion .toList() 
  */
  print('List original in Reverse: ${numbers.reversed}');
  
  final Iterable<int> reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${ reversedNumbers.toList() }');
  print('Set: ${ reversedNumbers.toSet() }');
  
  /* 
    eliminar los duplicados y luego pasarlos denuevo lista 
    porque la funcion toSet() los transforma en llaves
    asique para tener denuevo lista los pasamos a toList() 
  */
  print('List original: ${numbers.toSet().toList()}');
  
  final Iterable<int> numbersGreaterThan5 = numbers.where( (int number) {
    return number > 5;
  });
  
  print('Numbers Graters than 5>: $numbersGreaterThan5');
  print('Numbers Graters than 5> Set: ${ numbersGreaterThan5.toSet() }');
}