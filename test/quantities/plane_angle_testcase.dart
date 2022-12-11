import 'package:converter/converter.dart';

final Map<String, dynamic> planeAngleConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': PlaneAngle.si(157),
      'siValue': 157,
      'valueIn': <String, num>{
        'rad': 157,
        'mrad': 1.57e5,
        'deg': 8995.44,
        'arcmin': 5.39726e5,
        'arcsec': 3.238357e7,
        'grad': 9994.93,
      },
    },
    <String, dynamic>{
      'quantity': PlaneAngle(163, 'deg'),
      'siValue': 2.844886,
      'valueIn': <String, num>{
        'rad': 2.844886,
        'mrad': 2844.886,
        'deg': 163,
        'arcmin': 9780,
        'arcsec': 586800,
        'grad': 181.111,
      },
    },
    <String, dynamic>{
      'quantity': PlaneAngle(167, 'arcsec'),
      'siValue': 8.096388e-4,
      'valueIn': <String, num>{
        'rad': 8.096388e-4,
        'mrad': 0.8096388,
        'deg': 0.0463889,
        'arcmin': 2.783333,
        'arcsec': 167,
        'grad': 0.0515432,
      },
    },
  ],
};
