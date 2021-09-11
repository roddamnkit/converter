import 'dart:math';

import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'base/time.dart';
import 'quantity.dart';
import 'unit.dart';

/// Represents quantity Frequency
class Frequency extends Quantity<Frequency> {
  /// Constructs Frequency with the value and the unit
  Frequency(num value, String unitSymbol)
      : super(value, unitSymbol, _F._dimension);

  /// Constructs Frequency with the value in SI unit
  const Frequency.si(num siValue) : super.si(siValue, _F._dimension);
}

class _F extends Dimension<Frequency> {
  factory _F() => _dimension;

  const _F._internal()
      : super(
          const <BaseDimension<dynamic>, num>{T.dimension: -1},
          siUnitSymbol: 'Hz',
          allUnits: const <String, Unit>{
            'Hz': Unit('hertz', toSI: <InvertibleRealFunction>[]),
            'kHz': Unit(
              'kilohertz',
              toSI: <InvertibleRealFunction>[
                Multiplication(1000),
              ],
            ),
            'MHz': Unit(
              'megahertz',
              toSI: <InvertibleRealFunction>[
                Multiplication(1e6),
              ],
            ),
            'GHz': Unit(
              'gigahertz',
              toSI: <InvertibleRealFunction>[
                Multiplication(1e9),
              ],
            ),
            'THz': Unit(
              'terahertz',
              toSI: <InvertibleRealFunction>[
                Multiplication(1e12),
              ],
            ),
            'rad/s': Unit(
              'radian per second',
              toSI: <InvertibleRealFunction>[
                Division(2 * pi),
              ],
            ),
            'deg/s': Unit(
              'degree per second',
              toSI: <InvertibleRealFunction>[
                Division(360),
              ],
            ),
            'rpm': Unit(
              'revolutions per minute',
              toSI: <InvertibleRealFunction>[
                Division(60),
              ],
            ),
          },
        );

  @override
  Frequency si(num siValue) => Frequency.si(siValue);

  static const _F _dimension = _F._internal();
}
