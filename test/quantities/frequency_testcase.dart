import 'package:converter/converter.dart';

final Map<String, dynamic> frequencyConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': Frequency.si(79),
      'siValue': 79,
      'valueIn': <String, num>{
        'Hz': 79,
        'kHz': 0.079,
        'MHz': 7.9e-5,
        'GHz': 7.9e-8,
        'THz': 7.9e-11,
        'rad/s': 496.371639,
        'deg/s': 28440,
        'rpm': 4740,
      },
    },
    <String, dynamic>{
      'quantity': Frequency(83, 'deg/s'),
      'siValue': 0.2305555,
      'valueIn': <String, num>{
        'Hz': 0.2305555,
        'kHz': 2.305555e-4,
        'MHz': 2.305555e-7,
        'GHz': 2.305555e-10,
        'THz': 2.305555e-13,
        'rad/s': 1.448623,
        'deg/s': 83,
        'rpm': 13.833333,
      },
    },
    <String, dynamic>{
      'quantity': Frequency(89, 'THz'),
      'siValue': 8.9e13,
      'valueIn': <String, num>{
        'Hz': 8.9e13,
        'kHz': 8.9e10,
        'MHz': 8.9e7,
        'GHz': 8.9e4,
        'THz': 89,
        'rad/s': 5.592035e14,
        'deg/s': 3.204e16,
        'rpm': 5.34e15,
      },
    },
  ],
};
