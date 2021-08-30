import 'dart:math';

import 'package:invertible/invertible.dart';

import 'quantity.dart';
import 'unit.dart';

/// Represents quantity Solid angle
class SolidAngle extends Quantity<SolidAngle> {
  /// Constructs Solid angle with the value and the unit
  SolidAngle(num value, String unitSymbol)
      : super(value, unitSymbol, _SA._dimension);

  /// Constructs Solid angle with the value in SI unit
  const SolidAngle.si(num siValue) : super.si(siValue, _SA._dimension);
}

class _SA extends Dimensionless<SolidAngle> {
  factory _SA() => _dimension;

  const _SA._internal()
      : super(
          siUnitSymbol: 'sr',
          allUnits: const <String, Unit>{
            'sr': Unit('steradian', toSI: <InvertibleRealFunction>[]),
            'deg2': Unit(
              'square degree',
              toSI: <InvertibleRealFunction>[
                Multiplication((pi / 180) * (pi / 180)),
              ],
            ),
          },
        );

  @override
  SolidAngle si(num siValue) => SolidAngle.si(siValue);

  static const _SA _dimension = _SA._internal();
}
