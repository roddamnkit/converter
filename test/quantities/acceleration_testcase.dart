import 'package:converter/converter.dart';

final Map<String, dynamic> accelerationConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': Acceleration.si(173),
      'siValue': 173,
      'valueIn': <String, num>{
        'm/s2': 173,
        'cm/s2': 1.73e4,
        'gal': 1.73e4,
        'ft/s2': 567.585302,
        'g': 17.64109,
      },
    },
    <String, dynamic>{
      'quantity': Acceleration(179, 'gal'),
      'siValue': 1.79,
      'valueIn': <String, num>{
        'm/s2': 1.79,
        'cm/s2': 179,
        'gal': 179,
        'ft/s2': 5.872703,
        'g': 0.1825292,
      },
    },
    <String, dynamic>{
      'quantity': Acceleration(181, 'g'),
      'siValue': 1775.00365,
      'valueIn': <String, num>{
        'm/s2': 1775.00365,
        'cm/s2': 1.775003e5,
        'gal': 1.775003e5,
        'ft/s2': 5823.502789,
        'g': 181,
      },
    },
  ],
};
