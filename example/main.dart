import 'package:converter/converter.dart';

void main() {
  length();
}

void length() {
  final Length l1 = Length(2, 'm'); // 2 metres
  final Length l2 = Length(37, 'cm'); // 37 centimetres
  final Length l3 = Length(3.7, 'dm'); // 3.7 decimetres

  final num l2ValueInInches = l2.valueIn('in');
  print('37 centimetres is $l2ValueInInches inches'); // 14.566929

  final Length sum = l1 + l2;
  print(
      '2 metres + 37 centimetres is ${sum.valueIn('mm')} millimetres'); // 2370

  final Length difference = l1 - l2;
  print(
      '2 metres - 37 centimetres is ${difference.valueIn('ft')} feet'); // 5.347769

  final bool l1EQl2 = l1 == l2;
  print('2 metres == 37 centimetres is $l1EQl2'); // false

  final bool l2EQl3 = l2 == l3;
  print('37 centimetres == 3.7 decimetres is $l2EQl3'); // true

  final bool l1GTl2 = l1 > l2;
  print('2 metres > 37 centimetres is $l1GTl2'); // true

  final bool l1LTEl2 = l1 <= l2;
  print('2 metres <= 37 centimetres is $l1LTEl2'); // false
}
