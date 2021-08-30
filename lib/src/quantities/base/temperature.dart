import 'package:invertible/invertible.dart';

import 'base_quantity.dart';
import 'base_unit.dart';

/// Represents base quantity Temperature
class Temperature extends BaseQuantity<Temperature> {
  /// Constructs Temperature with the value and the unit
  Temperature(num value, String unitSymbol)
      : super(value, unitSymbol, Th.dimension);

  /// Constructs Temperature with the value in SI base unit
  const Temperature.si(num siValue) : super.si(siValue, Th.dimension);
}

///
class Th extends BaseDimension<Temperature> {
  ///
  factory Th() => dimension;

  const Th._internal()
      : super(
          symbol: 'Θ',
          siUnitSymbol: 'K',
          allUnits: const <String, BaseUnit>{
            'K': BaseUnit('kelvin', toSI: <InvertibleRealFunction>[]),
            'C': BaseUnit(
              'degree Celsius',
              toSI: <InvertibleRealFunction>[
                Addition(273.15),
              ],
            ),
            'F': BaseUnit(
              'degree Fahrenheit',
              toSI: <InvertibleRealFunction>[
                Addition(459.67),
                Multiplication(5 / 9),
              ],
            ),
            'R': BaseUnit(
              'degree Rankine',
              toSI: <InvertibleRealFunction>[
                Multiplication(5 / 9),
              ],
            ),
          },
        );

  @override
  Temperature si(num siValue) => Temperature.si(siValue);

  ///
  static const Th dimension = Th._internal();
}
