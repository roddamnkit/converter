import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'base/length.dart';
import 'base/time.dart';
import 'quantity.dart';
import 'unit.dart';

/// Represents quantity Speed
class Speed extends Quantity<Speed> {
  /// Constructs Speed with the magnitude and the unit
  Speed(num magnitude, String unitSymbol)
      : super(magnitude, unitSymbol, _S._dimension);

  /// Constructs Speed with the magnitude in SI unit
  const Speed.si(num magnitudeInSI) : super.si(magnitudeInSI, _S._dimension);
}

class _S extends Dimension<Speed> {
  factory _S() => _dimension;

  const _S._internal()
      : super(
          const <BaseDimension<dynamic>, num>{L.dimension: 1, T.dimension: -1},
          siUnitSymbol: 'm/s',
          allUnits: const <String, Unit>{
            'm/s': Unit('metre per second', toSI: <InvertibleRealFunction>[]),
            'km/h': Unit(
              'kilometre per hour',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'km',
                T.dimension: 'h',
              },
            ),
            'ft/s': Unit(
              'foot per second',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'ft',
                T.dimension: 's',
              },
            ),
            'mi/h': Unit(
              'mile per hour',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'mi',
                T.dimension: 'h',
              },
            ),
            'kn': Unit(
              'knot',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'nmi',
                T.dimension: 'h',
              },
            ),
          },
        );

  @override
  Speed si(num magnitudeInSI) => Speed.si(magnitudeInSI);

  static const _S _dimension = _S._internal();
}
