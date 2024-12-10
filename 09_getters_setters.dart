void main(){
  
  final Square mySquare = Square( side: 10 );
  
  print( 'area: ${mySquare.calculatedArea()}');
  
  mySquare.side = 5;
  
  print( 'area: ${mySquare.area}');
}

class Square {
  
  double _side;
  
  Square({ required double side })
    : _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side( double value ){
    print('Setting new value to: $value');
    if( value <= 0 ) throw 'Value must be >=0';
    
    _side = value;
  }
  
  double calculatedArea(){
    return _side * _side;
  }
  
}