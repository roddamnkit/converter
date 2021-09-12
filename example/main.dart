import 'package:converter/converter.dart';

void main() {
  length();
  print('\n');
  time();
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

void time() {
  final Time t1 = Time.si(86400); // 86400 seconds
  final Time t2 = Time(24, 'h'); // 24 hours
  final Time t3 = Time(1500, 'min'); // 1500 minutes

  final num t3ValueInDays = t3.valueIn('d');
  print('1500 minutes is $t3ValueInDays days'); // 1.041667

  final Time sum = t1 + t2;
  print('86400 seconds + 24 hours is ${sum.valueIn('min')} minutes'); // 2880

  final Time difference = t3 - t2;
  print('1500 minutes - 24 hours is ${difference.siValue} seconds'); // 3600

  final bool t1EQt2 = t1 == t2;
  print('86400 seconds == 24 hours is $t1EQt2'); // true

  final bool t2EQt3 = t2 == t3;
  print('24 hours == 1500 minutes is $t2EQt3'); // false

  final bool t3GTt2 = t3 > t2;
  print('1500 minutes > 24 hours is $t3GTt2'); // true

  final bool t3LTEt2 = t3 <= t2;
  print('1500 minutes <= 24 hours is $t3LTEt2'); // false
}
