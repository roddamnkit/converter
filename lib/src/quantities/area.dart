import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'base/length.dart';
import 'quantity.dart';
import 'unit.dart';

/// Represents quantity Area
class Area extends Quantity<Area> {
  /// Constructs Area with the value and the unit
  Area(num value, String unitSymbol) : super(value, unitSymbol, _A._dimension);

  /// Constructs Area with the value in SI unit
  const Area.si(num siValue) : super.si(siValue, _A._dimension);
}

class _A extends Dimension<Area> {
  factory _A() => _dimension;

  const _A._internal()
      : super(
          const <BaseDimension<dynamic>, num>{L.dimension: 2},
          siUnitSymbol: 'm2',
          allUnits: const <String, Unit>{
            'm2': Unit('square metre', toSI: <InvertibleRealFunction>[]),
            'dm2': Unit(
              'square decimetre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'dm',
              },
            ),
            'cm2': Unit(
              'square centimetre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'cm',
              },
            ),
            'mm2': Unit(
              'square millimetre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'mm',
              },
            ),
            'µm2': Unit(
              'square micrometre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'µm',
              },
            ),
            'dam2': Unit(
              'square decametre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'dam',
              },
            ),
            'hm2': Unit(
              'square hectometre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'hm',
              },
            ),
            'ha': Unit(
              'hectare',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'hm',
              },
            ),
            'km2': Unit(
              'square kilometre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'km',
              },
            ),
            'Mm2': Unit(
              'square megametre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'Mm',
              },
            ),
            'in2': Unit(
              'square inch',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'in',
              },
            ),
            'ft2': Unit(
              'square foot',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'ft',
              },
            ),
            'mi2': Unit(
              'square mile',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'mi',
              },
            ),
            'ac': Unit(
              'acre',
              toSI: <InvertibleRealFunction>[
                Multiplication(4046.8564224),
              ],
            ),
          },
        );

  @override
  Area si(num siValue) => Area.si(siValue);

  static const _A _dimension = _A._internal();
}
