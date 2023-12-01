import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'base/length.dart';
import 'base/time.dart';
import 'quantity.dart';
import 'unit.dart';

/// Represents quantity Acceleration
class Acceleration extends Quantity<Acceleration> {
  /// Constructs Acceleration with the value and the unit
  Acceleration(num value, String unitSymbol)
      : super(value, unitSymbol, _A._dimension);

  /// Constructs Acceleration with the value in SI unit
  const Acceleration.si(num siValue) : super.si(siValue, _A._dimension);
}

class _A extends Dimension<Acceleration> {
  factory _A() => _dimension;

  const _A._internal()
      : super(
          const <BaseDimension<dynamic>, num>{
            L.dimension: 1,
            T.dimension: -2,
          },
          siUnitSymbol: 'm/s2',
          allUnits: const <String, Unit>{
            'm/s2': Unit('metre per second squared',
                toSI: <InvertibleRealFunction>[]),
            'cm/s2': Unit(
              'centimetre per second squared',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'cm',
                T.dimension: 's',
              },
            ),
            'gal': Unit(
              'galileo',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'cm',
                T.dimension: 's',
              },
            ),
            'ft/s2': Unit(
              'foot per second squared',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'ft',
                T.dimension: 's',
              },
            ),
            'g': Unit(
              'standard gravity',
              toSI: <InvertibleRealFunction>[
                Multiplication(9.80665),
              ],
            ),
          },
        );

  @override
  Acceleration si(num siValue) => Acceleration.si(siValue);

  static const _A _dimension = _A._internal();
}
