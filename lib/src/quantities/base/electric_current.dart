import 'package:invertible/invertible.dart';

import 'base_quantity.dart';
import 'base_unit.dart';

/// Represents base quantity ElectricCurrent
class ElectricCurrent extends BaseQuantity<ElectricCurrent> {
  /// Constructs ElectricCurrent with the value and the unit
  ElectricCurrent(num value, String unitSymbol)
      : super(value, unitSymbol, I.dimension);

  /// Constructs ElectricCurrent with the value in SI base unit
  const ElectricCurrent.si(num siValue) : super.si(siValue, I.dimension);
}

///
class I extends BaseDimension<ElectricCurrent> {
  ///
  factory I() => dimension;

  const I._internal()
      : super(
          symbol: 'I',
          siUnitSymbol: 'A',
          allUnits: const <String, BaseUnit>{
            'A': BaseUnit('ampere', toSI: <InvertibleRealFunction>[]),
            'mA': BaseUnit(
              'milliampere',
              toSI: <InvertibleRealFunction>[
                Division(1000),
              ],
            ),
            'kA': BaseUnit(
              'kiloampere',
              toSI: <InvertibleRealFunction>[
                Multiplication(1000),
              ],
            ),
            'statA': BaseUnit(
              'statampere',
              toSI: <InvertibleRealFunction>[
                Multiplication(3.335641e-10),
              ],
            ),
            'abA': BaseUnit(
              'abampere',
              toSI: <InvertibleRealFunction>[
                Multiplication(10),
              ],
            ),
            'Bi': BaseUnit(
              'biot',
              toSI: <InvertibleRealFunction>[
                Multiplication(10),
              ],
            ),
          },
        );

  @override
  ElectricCurrent si(num siValue) => ElectricCurrent.si(siValue);

  ///
  static const I dimension = I._internal();
}
