import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'base/electric_current.dart';
import 'base/time.dart';
import 'quantity.dart';
import 'unit.dart';

/// Represents quantity ElectricCharge
class ElectricCharge extends Quantity<ElectricCharge> {
  /// Constructs ElectricCharge with the value and the unit
  ElectricCharge(num value, String unitSymbol)
      : super(value, unitSymbol, _EC._dimension);

  /// Constructs ElectricCharge with the value in SI unit
  const ElectricCharge.si(num siValue) : super.si(siValue, _EC._dimension);
}

class _EC extends Dimension<ElectricCharge> {
  factory _EC() => _dimension;

  const _EC._internal()
      : super(
          const <BaseDimension<dynamic>, num>{
            I.dimension: 1,
            T.dimension: 1,
          },
          siUnitSymbol: 'C',
          allUnits: const <String, Unit>{
            'C': Unit('coulomb', toSI: <InvertibleRealFunction>[]),
            'mC': Unit(
              'millicoulomb',
              toSI: <InvertibleRealFunction>[
                Division(1000),
              ],
            ),
            'µC': Unit(
              'microcoulomb',
              toSI: <InvertibleRealFunction>[
                Division(1e6),
              ],
            ),
            'nC': Unit(
              'nanocoulomb',
              toSI: <InvertibleRealFunction>[
                Division(1e9),
              ],
            ),
            'Ah': Unit(
              'ampere hour',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                I.dimension: 'A',
                T.dimension: 'h',
              },
            ),
            'mAh': Unit(
              'milliampere hour',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                I.dimension: 'mA',
                T.dimension: 'h',
              },
            ),
            'statC': Unit(
              'statcoulomb',
              toSI: <InvertibleRealFunction>[
                Multiplication(3.335641e-10),
              ],
            ),
            'Fr': Unit(
              'franklin',
              toSI: <InvertibleRealFunction>[
                Multiplication(3.335641e-10),
              ],
            ),
            'abC': Unit(
              'abcoulomb',
              toSI: <InvertibleRealFunction>[
                Multiplication(10),
              ],
            ),
          },
        );

  @override
  ElectricCharge si(num siValue) => ElectricCharge.si(siValue);

  static const _EC _dimension = _EC._internal();
}
