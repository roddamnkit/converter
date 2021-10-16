import 'package:converter/converter.dart';

final Map<String, dynamic> forceConverter = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'quantity': Force.si(97),
      'siValue': 97,
      'valueIn': <String, num>{
        'N': 97,
        'dyn': 9.7e6,
        'gf': 9891.247265,
        'kgf': 9.891247,
        'lbf': 21.806467,
        'pdl': 701.602343,
      },
    },
    <String, dynamic>{
      'quantity': Force(101, 'gf'),
      'siValue': 0.990472,
      'valueIn': <String, num>{
        'N': 0.990472,
        'dyn': 9.904716e4,
        'gf': 101,
        'kgf': 0.101,
        'lbf': 0.222667,
        'pdl': 7.164095,
      },
    },
    <String, dynamic>{
      'quantity': Force(103, 'lbf'),
      'siValue': 458.166826,
      'valueIn': <String, num>{
        'N': 458.166826,
        'dyn': 4.581668e7,
        'gf': 46720.01411,
        'kgf': 46.720014,
        'lbf': 103,
        'pdl': 3313.927,
      },
    },
  ],
};
