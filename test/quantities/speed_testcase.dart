import 'package:converter/converter.dart';

final Map<String, dynamic> speedConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': Speed.si(43),
      'siValue': 43,
      'valueIn': <String, num>{
        'm/s': 43,
        'km/h': 154.8,
        'ft/s': 141.076115,
        'mi/h': 96.188261,
        'kn': 83.585313,
      },
    },
    <String, dynamic>{
      'quantity': Speed(47, 'km/h'),
      'siValue': 13.055556,
      'valueIn': <String, num>{
        'm/s': 13.055556,
        'km/h': 47,
        'ft/s': 42.833187,
        'mi/h': 29.204446,
        'kn': 25.377969,
      },
    },
    <String, dynamic>{
      'quantity': Speed(53, 'mi/h'),
      'siValue': 23.69312,
      'valueIn': <String, num>{
        'm/s': 23.69312,
        'km/h': 85.295232,
        'ft/s': 77.733333,
        'mi/h': 53,
        'kn': 46.055741,
      },
    },
  ],
};
