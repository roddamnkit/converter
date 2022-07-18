import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'base/length.dart';
import 'quantity.dart';
import 'unit.dart';

/// Represents quantity Volume
class Volume extends Quantity<Volume> {
  /// Constructs Volume with the value and the unit
  Volume(num value, String unitSymbol)
      : super(value, unitSymbol, _V._dimension);

  /// Constructs Volume with the value in SI unit
  const Volume.si(num siValue) : super.si(siValue, _V._dimension);
}

class _V extends Dimension<Volume> {
  factory _V() => _dimension;

  const _V._internal()
      : super(
          const <BaseDimension<dynamic>, num>{L.dimension: 3},
          siUnitSymbol: 'm3',
          allUnits: const <String, Unit>{
            'm3': Unit('cubic metre', toSI: <InvertibleRealFunction>[]),
            'kl': Unit('kilolitre', toSI: <InvertibleRealFunction>[]),
            'dm3': Unit(
              'cubic decimetre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'dm',
              },
            ),
            'l': Unit(
              'litre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'dm',
              },
            ),
            'cm3': Unit(
              'cubic centimetre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'cm',
              },
            ),
            'ml': Unit(
              'millilitre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'cm',
              },
            ),
            'mm3': Unit(
              'cubic millimetre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'mm',
              },
            ),
            'µl': Unit(
              'microlitre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'mm',
              },
            ),
            'dam3': Unit(
              'cubic decametre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'dam',
              },
            ),
            'Ml': Unit(
              'megalitre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'dam',
              },
            ),
            'hm3': Unit(
              'cubic hectometre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'hm',
              },
            ),
            'Gl': Unit(
              'gigalitre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'hm',
              },
            ),
            'km3': Unit(
              'cubic kilometre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'km',
              },
            ),
            'Tl': Unit(
              'teralitre',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'km',
              },
            ),
            'in3': Unit(
              'cubic inch',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'in',
              },
            ),
            'ft3': Unit(
              'cubic foot',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'ft',
              },
            ),
            'mi3': Unit(
              'cubic mile',
              baseUnitSymbols: <BaseDimension<dynamic>, String>{
                L.dimension: 'mi',
              },
            ),
            'gal': Unit(
              'gallon',
              toSI: <InvertibleRealFunction>[
                Multiplication(0.00454609),
              ],
            ),
            'qt': Unit(
              'quart',
              toSI: <InvertibleRealFunction>[
                Multiplication(0.0011365225),
              ],
            ),
            'pt': Unit(
              'pint',
              toSI: <InvertibleRealFunction>[
                Multiplication(5.6826125e-4),
              ],
            ),
            'fl-oz': Unit(
              'fluid ounce',
              toSI: <InvertibleRealFunction>[
                Multiplication(2.84130625e-5),
              ],
            ),
            'tbsp': Unit(
              'tablespoon',
              toSI: <InvertibleRealFunction>[
                Multiplication(1.5e-5),
              ],
            ),
            'tsp': Unit(
              'teaspoon',
              toSI: <InvertibleRealFunction>[
                Multiplication(5e-6),
              ],
            ),
          },
        );

  @override
  Volume si(num siValue) => Volume.si(siValue);

  static const _V _dimension = _V._internal();
}
