void main(){
  final mySquare = Square(side:10);
  mySquare.side = 5;
  print('Area: ${mySquare.area}');
}

class Square {
  double _side; //side + side
  
  Square({ required double side }): assert(side >= 0, 
                    'side most or equals that 0'), _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double value){
    if (value < 0) throw 'Value Incorrect';
    _side = value;
  }
  
}