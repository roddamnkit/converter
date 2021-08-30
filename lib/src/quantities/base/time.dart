import 'package:invertible/invertible.dart';

import 'base_quantity.dart';
import 'base_unit.dart';

/// Represents base quantity Time
class Time extends BaseQuantity<Time> {
  /// Constructs Time with the value and the unit
  Time(num value, String unitSymbol) : super(value, unitSymbol, T.dimension);

  /// Constructs Time with the value in SI base unit
  const Time.si(num siValue) : super.si(siValue, T.dimension);
}

///
class T extends BaseDimension<Time> {
  ///
  factory T() => dimension;

  const T._internal()
      : super(
          symbol: 'T',
          siUnitSymbol: 's',
          allUnits: const <String, BaseUnit>{
            's': BaseUnit('second', toSI: <InvertibleRealFunction>[]),
            'ds': BaseUnit(
              'decisecond',
              toSI: <InvertibleRealFunction>[
                Division(10),
              ],
            ),
            'cs': BaseUnit(
              'centisecond',
              toSI: <InvertibleRealFunction>[
                Division(100),
              ],
            ),
            'ms': BaseUnit(
              'millisecond',
              toSI: <InvertibleRealFunction>[
                Division(1000),
              ],
            ),
            'µs': BaseUnit(
              'microsecond',
              toSI: <InvertibleRealFunction>[
                Division(1e6),
              ],
            ),
            'ns': BaseUnit(
              'nanosecond',
              toSI: <InvertibleRealFunction>[
                Division(1e9),
              ],
            ),
            'das': BaseUnit(
              'decasecond',
              toSI: <InvertibleRealFunction>[
                Multiplication(10),
              ],
            ),
            'hs': BaseUnit(
              'hectosecond',
              toSI: <InvertibleRealFunction>[
                Multiplication(100),
              ],
            ),
            'ks': BaseUnit(
              'kilosecond',
              toSI: <InvertibleRealFunction>[
                Multiplication(1000),
              ],
            ),
            'Ms': BaseUnit(
              'megasecond',
              toSI: <InvertibleRealFunction>[
                Multiplication(1e6),
              ],
            ),
            'Gs': BaseUnit(
              'gigasecond',
              toSI: <InvertibleRealFunction>[
                Multiplication(1e9),
              ],
            ),
            'min': BaseUnit(
              'minute',
              toSI: <InvertibleRealFunction>[
                Multiplication(60),
              ], // 60 s
            ),
            'h': BaseUnit(
              'hour',
              toSI: <InvertibleRealFunction>[
                Multiplication(3600),
              ], // 60 min
            ),
            'd': BaseUnit(
              'day',
              toSI: <InvertibleRealFunction>[
                Multiplication(8.64e4),
              ], // 24 h
            ),
            'wk': BaseUnit(
              'week',
              toSI: <InvertibleRealFunction>[
                Multiplication(6.048e5),
              ], // 7 d
            ),
            'fn': BaseUnit(
              'fortnight',
              toSI: <InvertibleRealFunction>[
                Multiplication(1.2096e6),
              ], // 2 wk
            ),
            'mo': BaseUnit(
              'month',
              toSI: <InvertibleRealFunction>[
                Multiplication(2.629746e6),
              ], // 1/12 y
            ),
            'y': BaseUnit(
              'year',
              toSI: <InvertibleRealFunction>[
                Multiplication(3.1556952e7),
              ], // 365.2425 d
            ),
            'dec': BaseUnit(
              'decade',
              toSI: <InvertibleRealFunction>[
                Multiplication(3.1556952e8),
              ], // 10 y
            ),
            'c': BaseUnit(
              'century',
              toSI: <InvertibleRealFunction>[
                Multiplication(3.1556952e9),
              ], // 10 dec
            ),
          },
        );

  @override
  Time si(num siValue) => Time.si(siValue);

  ///
  static const T dimension = T._internal();
}
