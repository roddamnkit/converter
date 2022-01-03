import 'package:converter/converter.dart';

final Map<String, dynamic> electricChargeConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': ElectricCharge.si(127),
      'siValue': 127,
      'valueIn': <String, num>{
        'C': 127,
        'mC': 1.27e5,
        'µC': 1.27e8,
        'nC': 1.27e11,
        'Ah': 0.0352778,
        'mAh': 35.277778,
        'statC': 3.807364e11,
        'Fr': 3.807364e11,
        'abC': 12.7,
      },
    },
    <String, dynamic>{
      'quantity': ElectricCharge(131, 'Ah'),
      'siValue': 4.716e5,
      'valueIn': <String, num>{
        'C': 4.716e5,
        'mC': 4.716e8,
        'µC': 4.716e11,
        'nC': 4.716e14,
        'Ah': 131,
        'mAh': 1.31e5,
        'statC': 1.413821e15,
        'Fr': 1.413821e15,
        'abC': 4.716e4,
      },
    },
    <String, dynamic>{
      'quantity': ElectricCharge(137, 'Fr'),
      'siValue': 4.569828e-8,
      'valueIn': <String, num>{
        'C': 4.569828e-8,
        'mC': 4.569828e-5,
        'µC': 0.04569828,
        'nC': 45.698282,
        'Ah': 1.269397e-11,
        'mAh': 1.269397e-8,
        'statC': 137,
        'Fr': 137,
        'abC': 4.569828e-9,
      },
    },
  ],
};
