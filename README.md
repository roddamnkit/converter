# converter - Convert between different units of measurement

[![Version](https://img.shields.io/pub/v/converter)](https://pub.dev/packages/converter)
[![Build Status](https://travis-ci.com/dkin-om/converter-dart.svg?branch=master)](https://travis-ci.com/dkin-om/converter-dart)
[![Coverage Status](https://coveralls.io/repos/github/dkin-om/converter-dart/badge.svg)](https://coveralls.io/github/dkin-om/converter-dart)
[![License](https://img.shields.io/badge/license-MIT-green)](https://github.com/dkin-om/converter-dart/blob/master/LICENSE)

A Dart library for converting between different units of measurement for various quantities

## Usage

See `example/main.dart`

```dart
final Length l1 = Length(2, 'm'); // 2 metres
final Length l2 = Length(37, 'cm'); // 37 centimetres
final Length l3 = Length(3.7, 'dm'); // 3.7 decimetres

final num l2ValueInInches = l2.valueIn('in');
// l2ValueInInches ~= 14.566929

final Length sum = l1 + l2;
// sum == 2370 millimetres

final Length difference = l1 - l2;
// difference ~= 5.347769 feet

final bool l1EQl2 = l1 == l2;
// l1EQl2 == false

final bool l2EQl3 = l2 == l3;
// l2EQl3 == true

final bool l1GTl2 = l1 > l2;
// l1GTl2 == true

final bool l1LTEl2 = l1 <= l2;
// l1LTEl2 == false
```

## Supported quantities and units

### `Length`
- `m` - metre (**SI**)
- `dm` - decimetre
- `cm` - centimetre
- `mm` - millimetre
- `µm` - micrometre
- `nm` - nanometre
- `dam` - decametre
- `hm` - hectometre
- `km` - kilometre
- `Mm` - megametre
- `Gm` - gigametre
- `Å` - ångström
- `in` - inch
- `ft` - foot
- `yd` - yard
- `mi` - mile
- `nmi` - nautical mile

### `Mass`
- `kg` - kilogram (**SI**)
- `hg` - hectogram
- `dag` - decagram
- `g` - gram
- `dg` - decigram
- `cg` - centigram
- `mg` - milligram
- `µg` - microgram
- `ng` - nanogram
- `Mg` - megagram
- `Gg` - gigagram
- `oz` - ounce
- `lb` - pound
- `t` - tonne *or* metric ton
- `long-ton` | `ton` - long ton *or* imperial ton
- `short-ton` - short ton

### `Time`
- `s` - second (**SI**)
- `ds` - decisecond
- `cs` - centisecond
- `ms` - millisecond
- `µs` - microsecond
- `ns` - nanosecond
- `das` - decasecond
- `hs` - hectosecond
- `ks` - kilosecond
- `Ms` - megasecond
- `Gs` - gigasecond
- `min` - minute
- `h` - hour
- `d` - day
- `wk` - week
- `fn` - fortnight
- `mo` - month
- `y` - year
- `dec` - decade
- `c` - century

### `Temperature`
- `K` - kelvin (**SI**)
- `C` - degree Celsius
- `F` - degree Fahrenheit
- `R` - degree Rankine

### `Area`
- `m2` - square metre (**SI**)
- `dm2` - square decimetre
- `cm2` - square centimetre
- `mm2` - square millimetre
- `µm2` - square micrometre
- `dam2` - square decametre
- `hm2` | `ha` - square hectometre *or* hectare
- `km2` - square kilometre
- `Mm2` - square megametre
- `in2` - square inch
- `ft2` - square foot
- `mi2` - square mile
- `ac` - acre

### `Frequency`
- `Hz` - hertz (**SI**)
- `kHz` - kilohertz
- `MHz` - megahertz
- `GHz` - gigahertz
- `THz` - terahertz
- `rad/s` - radian per second
- `deg/s` - degree per second
- `rpm` - revolutions per minute

### `SolidAngle`
- `sr` - steradian (**SI**)
- `deg2` - square degree

### `Speed`
- `m/s` - metre per second (**SI**)
- `km/h` - kilometre per hour
- `ft/s` - foot per second
- `mi/h` - mile per hour
- `kn` - knot

## Syntax

See [documentation](https://pub.dev/documentation/converter) for more

## License

[MIT](https://github.com/dkin-om/converter-dart/blob/master/LICENSE)
