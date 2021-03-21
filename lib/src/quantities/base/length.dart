import 'package:invertible/invertible.dart';

import 'base_quantity.dart';
import 'base_unit.dart';

/// Represents base quantity Length
class Length extends BaseQuantity<Length> {
  /// Constructs Length with the magnitude and the unit
  Length(num magnitude, String unitSymbol)
      : super(magnitude, unitSymbol, L.dimension);

  /// Constructs Length with the magnitude in SI base unit
  const Length.si(num magnitudeInSI) : super.si(magnitudeInSI, L.dimension);
}

///
class L extends BaseDimension<Length> {
  ///
  factory L() => dimension;

  const L._internal()
      : super(
          symbol: 'L',
          siUnitSymbol: 'm',
          allUnits: const <String, BaseUnit>{
            'm': BaseUnit('metre', toSI: <InvertibleRealFunction>[]),
            'dm': BaseUnit(
              'decimetre',
              toSI: <InvertibleRealFunction>[
                Division(10),
              ],
            ),
            'cm': BaseUnit(
              'centimetre',
              toSI: <InvertibleRealFunction>[
                Division(100),
              ],
            ),
            'mm': BaseUnit(
              'millimetre',
              toSI: <InvertibleRealFunction>[
                Division(1000),
              ],
            ),
            'µm': BaseUnit(
              'micrometre',
              toSI: <InvertibleRealFunction>[
                Division(1e6),
              ],
            ),
            'nm': BaseUnit(
              'nanometre',
              toSI: <InvertibleRealFunction>[
                Division(1e9),
              ],
            ),
            'dam': BaseUnit(
              'decametre',
              toSI: <InvertibleRealFunction>[
                Multiplication(10),
              ],
            ),
            'hm': BaseUnit(
              'hectometre',
              toSI: <InvertibleRealFunction>[
                Multiplication(100),
              ],
            ),
            'km': BaseUnit(
              'kilometre',
              toSI: <InvertibleRealFunction>[
                Multiplication(1000),
              ],
            ),
            'Mm': BaseUnit(
              'megametre',
              toSI: <InvertibleRealFunction>[
                Multiplication(1e6),
              ],
            ),
            'Gm': BaseUnit(
              'gigametre',
              toSI: <InvertibleRealFunction>[
                Multiplication(1e9),
              ],
            ),
            'Å': BaseUnit(
              'ångström',
              toSI: <InvertibleRealFunction>[
                Division(1e10),
              ],
            ),
            'in': BaseUnit(
              'inch',
              toSI: <InvertibleRealFunction>[
                Division(5000 / 127),
              ],
            ),
            'ft': BaseUnit(
              'foot',
              toSI: <InvertibleRealFunction>[
                Division(1250 / 381),
              ],
            ),
            'yd': BaseUnit(
              'yard',
              toSI: <InvertibleRealFunction>[
                Division(1250 / 1143),
              ],
            ),
            'mi': BaseUnit(
              'mile',
              toSI: <InvertibleRealFunction>[
                Multiplication(1609.344),
              ],
            ),
            'nmi': BaseUnit(
              'nautical mile',
              toSI: <InvertibleRealFunction>[
                Multiplication(1852),
              ],
            ),
          },
        );

  @override
  Length si(num magnitudeInSI) => Length.si(magnitudeInSI);

  ///
  static const L dimension = L._internal();
}
