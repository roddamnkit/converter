import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'base/length.dart';
import 'base/mass.dart';
import 'base/time.dart';
import 'quantity.dart';
import 'unit.dart';

/// Represents quantity Force
class Force extends Quantity<Force> {
  /// Constructs Force with the value and the unit
  Force(num value, String unitSymbol) : super(value, unitSymbol, _F._dimension);

  /// Constructs Force with the value in SI unit
  const Force.si(num siValue) : super.si(siValue, _F._dimension);
}

class _F extends Dimension<Force> {
  factory _F() => _dimension;

  const _F._internal()
      : super(
          const <BaseDimension<dynamic>, num>{
            L.dimension: 1,
            M.dimension: 1,
            T.dimension: -2,
          },
          siUnitSymbol: 'N',
          allUnits: const <String, Unit>{
            'N': Unit('newton', toSI: <InvertibleRealFunction>[]),
            'dyn': Unit(
              'dyne',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'cm',
                M.dimension: 'g',
                T.dimension: 's',
              },
            ),
            'gf': Unit(
              'gram-force',
              toSI: <InvertibleRealFunction>[
                Multiplication(0.001 * 9.80665),
              ],
            ),
            'kgf': Unit(
              'kilogram-force',
              toSI: <InvertibleRealFunction>[
                Multiplication(9.80665),
              ],
            ),
            'lbf': Unit(
              'pound-force',
              toSI: <InvertibleRealFunction>[
                Multiplication(0.45359237 * 9.80665),
              ],
            ),
            'pdl': Unit(
              'poundal',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'ft',
                M.dimension: 'lb',
                T.dimension: 's',
              },
            ),
          },
        );

  @override
  Force si(num siValue) => Force.si(siValue);

  static const _F _dimension = _F._internal();
}
