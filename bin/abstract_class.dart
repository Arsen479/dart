import 'dart:ffi';

import 'package:abstract_class/abstract_class.dart' as abstract_class;

void main(List<String> arguments) {
  // Square figure1 = Square(4);
  // figure1.countArea();
  // Pryamougol figure2 = Pryamougol(4, 6);
  // figure2.countArea();
  Cat cat1 =Cat(4,'COLOR White')..pokaz();
  Cow cowS = Cow(4, 'КОПЫТА', 'РОГА')..pokaz();
}

abstract class Shape{
  void countArea(){
    print('nothing');
  }
}

class Square extends Shape{
  int side;

  Square(this.side);

  @override
  void countArea() {
    print(side * side);
  }
}

class Pryamougol extends Shape{
  int side;
  int longside;

  Pryamougol(this.side, this.longside);

  @override
  void countArea() {
    print(side*longside);
  }
}

abstract class Animals{
  int legs=0;
  

  void voice(){
    print('nothing');
  }
}

class Cat extends Animals{
  @override
  int legs;
  String color;

  Cat(this.legs, this.color);

 @override
  void voice() {
    print('mya-mya');
  }

  void pokaz(){
    print('количество ног: $legs,отличительная черта: $color');
  }
}

class Cow extends Animals{
  @override
  int legs;
  String roga;
  String legsType;

  Cow(this.legs, this.legsType, this.roga);

  void pokaz(){
    print('количество ног: $legs,отличительная черта: $roga, тип ног: $legsType');
  }
}