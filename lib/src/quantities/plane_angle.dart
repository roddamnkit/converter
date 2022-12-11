import 'dart:math';

import 'package:invertible/invertible.dart';

import 'quantity.dart';
import 'unit.dart';

/// Represents quantity Plane angle
class PlaneAngle extends Quantity<PlaneAngle> {
  /// Constructs Plane angle with the value and the unit
  PlaneAngle(num value, String unitSymbol)
      : super(value, unitSymbol, _PA._dimension);

  /// Constructs Plane angle with the value in SI unit
  const PlaneAngle.si(num siValue) : super.si(siValue, _PA._dimension);
}

class _PA extends Dimensionless<PlaneAngle> {
  factory _PA() => _dimension;

  const _PA._internal()
      : super(
          siUnitSymbol: 'rad',
          allUnits: const <String, Unit>{
            'rad': Unit('radian', toSI: <InvertibleRealFunction>[]),
            'mrad': Unit(
              'milliradian',
              toSI: <InvertibleRealFunction>[
                Division(1000),
              ],
            ),
            'deg': Unit(
              'degree',
              toSI: <InvertibleRealFunction>[
                Multiplication(pi / 180),
              ],
            ),
            'arcmin': Unit(
              'arcminute',
              toSI: <InvertibleRealFunction>[
                Multiplication(pi / 10800),
              ],
            ),
            'arcsec': Unit(
              'arcsecond',
              toSI: <InvertibleRealFunction>[
                Multiplication(pi / 648000),
              ],
            ),
            'grad': Unit(
              'gradian',
              toSI: <InvertibleRealFunction>[
                Multiplication(pi / 200),
              ],
            ),
          },
        );

  @override
  PlaneAngle si(num siValue) => PlaneAngle.si(siValue);

  static const _PA _dimension = _PA._internal();
}
