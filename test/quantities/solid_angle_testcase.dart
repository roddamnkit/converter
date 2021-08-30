import 'package:converter/converter.dart';

final Map<String, dynamic> solidAngleConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': SolidAngle.si(59),
      'siValue': 59,
      'valueIn': <String, num>{
        'sr': 59,
        'deg2': 1.936856e5,
      },
    },
    <String, dynamic>{
      'quantity': SolidAngle(61, 'deg2'),
      'siValue': 0.01858166,
      'valueIn': <String, num>{
        'sr': 0.01858166,
        'deg2': 61,
      },
    },
  ],
};
