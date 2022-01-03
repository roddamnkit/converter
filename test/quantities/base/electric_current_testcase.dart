import 'package:converter/converter.dart';

final Map<String, dynamic> electricCurrentConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': ElectricCurrent.si(107),
      'siValue': 107,
      'valueIn': <String, num>{
        'A': 107,
        'mA': 1.07e5,
        'kA': 0.107,
        'statA': 3.207779e11,
        'abA': 10.7,
        'Bi': 10.7,
      },
    },
    <String, dynamic>{
      'quantity': ElectricCurrent(109, 'kA'),
      'siValue': 1.09e5,
      'valueIn': <String, num>{
        'A': 1.09e5,
        'mA': 1.09e8,
        'kA': 109,
        'statA': 3.267738e14,
        'abA': 1.09e4,
        'Bi': 1.09e4,
      },
    },
    <String, dynamic>{
      'quantity': ElectricCurrent(113, 'statA'),
      'siValue': 3.769274e-8,
      'valueIn': <String, num>{
        'A': 3.769274e-8,
        'mA': 3.769274e-5,
        'kA': 3.769274e-11,
        'statA': 113,
        'abA': 3.769274e-9,
        'Bi': 3.769274e-9,
      },
    },
  ],
};
