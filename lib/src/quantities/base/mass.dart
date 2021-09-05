import 'package:invertible/invertible.dart';

import 'base_quantity.dart';
import 'base_unit.dart';

/// Represents base quantity Mass
class Mass extends BaseQuantity<Mass> {
  /// Constructs Mass with the value and the unit
  Mass(num value, String unitSymbol) : super(value, unitSymbol, M.dimension);

  /// Constructs Mass with the value in SI base unit
  const Mass.si(num siValue) : super.si(siValue, M.dimension);
}

///
class M extends BaseDimension<Mass> {
  ///
  factory M() => dimension;

  const M._internal()
      : super(
          symbol: 'M',
          siUnitSymbol: 'kg',
          allUnits: const <String, BaseUnit>{
            'kg': BaseUnit('kilogram', toSI: <InvertibleRealFunction>[]),
            'hg': BaseUnit(
              'hectogram',
              toSI: <InvertibleRealFunction>[
                Division(10),
              ],
            ),
            'dag': BaseUnit(
              'decagram',
              toSI: <InvertibleRealFunction>[
                Division(100),
              ],
            ),
            'g': BaseUnit(
              'gram',
              toSI: <InvertibleRealFunction>[
                Division(1000),
              ],
            ),
            'dg': BaseUnit(
              'decigram',
              toSI: <InvertibleRealFunction>[
                Division(1e4),
              ],
            ),
            'cg': BaseUnit(
              'centigram',
              toSI: <InvertibleRealFunction>[
                Division(1e5),
              ],
            ),
            'mg': BaseUnit(
              'milligram',
              toSI: <InvertibleRealFunction>[
                Division(1e6),
              ],
            ),
            'µg': BaseUnit(
              'microgram',
              toSI: <InvertibleRealFunction>[
                Division(1e9),
              ],
            ),
            'ng': BaseUnit(
              'nanogram',
              toSI: <InvertibleRealFunction>[
                Division(1e12),
              ],
            ),
            'Mg': BaseUnit(
              'megagram',
              toSI: <InvertibleRealFunction>[
                Multiplication(1000),
              ],
            ),
            'Gg': BaseUnit(
              'gigagram',
              toSI: <InvertibleRealFunction>[
                Multiplication(1e6),
              ],
            ),
            'oz': BaseUnit(
              'ounce',
              toSI: <InvertibleRealFunction>[
                Multiplication(0.028349523125),
              ],
            ),
            'lb': BaseUnit(
              'pound',
              toSI: <InvertibleRealFunction>[
                Multiplication(0.45359237),
              ],
            ),
            't': BaseUnit(
              'tonne',
              toSI: <InvertibleRealFunction>[
                Multiplication(1000),
              ],
            ),
            'ton': BaseUnit(
              'imperial ton',
              toSI: <InvertibleRealFunction>[
                Multiplication(1016.0469088),
              ],
            ),
            'long-ton': BaseUnit(
              'long ton',
              toSI: <InvertibleRealFunction>[
                Multiplication(1016.0469088),
              ],
            ),
            'short-ton': BaseUnit(
              'short ton',
              toSI: <InvertibleRealFunction>[
                Multiplication(907.18474),
              ],
            ),
          },
        );

  @override
  Mass si(num siValue) => Mass.si(siValue);

  ///
  static const M dimension = M._internal();
}
