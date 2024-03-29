import 'package:converter/converter.dart';

final Map<String, dynamic> temperatureConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': Temperature.si(29),
      'siValue': 29,
      'valueIn': <String, num>{
        'K': 29,
        'C': -244.15,
        'F': -407.47,
        'R': 52.2,
      },
    },
    <String, dynamic>{
      'quantity': Temperature(31, 'C'),
      'siValue': 304.15,
      'valueIn': <String, num>{
        'K': 304.15,
        'C': 31,
        'F': 87.8,
        'R': 547.47,
      },
    },
    <String, dynamic>{
      'quantity': Temperature(-37, 'F'),
      'siValue': 234.816667,
      'valueIn': <String, num>{
        'K': 234.816667,
        'C': -38.333333,
        'F': -37,
        'R': 422.67,
      },
    },
    <String, dynamic>{
      'quantity': Temperature(41, 'R'),
      'siValue': 22.777778,
      'valueIn': <String, num>{
        'K': 22.777778,
        'C': -250.372222,
        'F': -418.67,
        'R': 41,
      },
    },
  ],
};
