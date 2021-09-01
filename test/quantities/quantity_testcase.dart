import 'package:converter/converter.dart';

final List<List<dynamic>> addTestCases = <List<dynamic>>[
  // Length
  <dynamic>[Length(2, 'm'), Length(50, 'cm'), 2.5],
  <dynamic>[Length(31.4, 'km'), Length(1.5926e4, 'mm'), 3.1415926e4],

  // Time
  <dynamic>[Time(100, 'h'), Time(8.64e4, 's'), 4.464e5],
  <dynamic>[Time(4e12, 'ns'), Time(100, 'min'), 1e4],

  // Area
  <dynamic>[Area(0.75, 'km2'), Area(2.5e6, 'ft2'), 9.822576e5],
  <dynamic>[Area(3, 'ha'), Area(12, 'ac'), 7.856228e4],

  // Speed
  <dynamic>[Speed(2.997924, 'm/s'), Speed(3.353083, 'mi/h'), 4.496886],
  <dynamic>[Speed(1125, 'ft/s'), Speed(644, 'kn'), 674.202222],
];

final List<List<dynamic>> subtractTestCases = <List<dynamic>>[
  // Length
  <dynamic>[Length(2, 'm'), Length(50, 'cm'), 1.5],
  <dynamic>[Length(31.4, 'km'), Length(1.5926e4, 'mm'), 3.1384074e4],

  // Time
  <dynamic>[Time(100, 'h'), Time(8.64e4, 's'), 2.736e5],
  <dynamic>[Time(100, 'min'), Time(4e12, 'ns'), 2000],

  // Area
  <dynamic>[Area(0.75, 'km2'), Area(2.5e6, 'ft2'), 5.177424e5],
  <dynamic>[Area(12, 'ac'), Area(3, 'ha'), 1.856228e4],

  // Speed
  <dynamic>[Speed(2.997924, 'm/s'), Speed(3.353083, 'mi/h'), 1.498962],
  <dynamic>[Speed(1125, 'ft/s'), Speed(644, 'kn'), 11.597778],
];

final List<List<Quantity<dynamic>>> eqTestCases = <List<Quantity<dynamic>>>[
  // Length
  <Length>[Length(2.5, 'm'), Length(250, 'cm')],
  <Length>[Length(31.415926, 'Mm'), Length(3.1415926e17, 'Å')],

  // Time
  <Time>[Time(100, 'h'), Time(3.6e5, 's')],
  <Time>[Time(32, 'y'), Time(11687.76, 'd')],

  // Temperature
  <Temperature>[Temperature(55, 'K'), Temperature(99, 'R')],
  <Temperature>[Temperature(-40, 'F'), Temperature(233.15, 'K')],

  // Area
  <Area>[Area(0.75, 'km2'), Area(7.5e5, 'm2')],
  <Area>[Area(3e4, 'm2'), Area(3, 'ha')],

  // SolidAngle
  <SolidAngle>[SolidAngle.si(2.5), SolidAngle(2.5, 'sr')],
  <SolidAngle>[SolidAngle(12345, 'deg2'), SolidAngle(12345.0, 'deg2')],

  // Speed
  <Speed>[Speed(60, 'km/h'), Speed(50 / 3, 'm/s')],
  <Speed>[Speed(2.5, 'm/s'), Speed(9, 'km/h')],
];

final List<List<Quantity<dynamic>>> gtTestCases = <List<Quantity<dynamic>>>[
  // Length
  <Length>[Length(3.5, 'm'), Length(250, 'cm')],
  <Length>[Length(31.415926, 'Gm'), Length(3.1415926e17, 'Å')],

  // Time
  <Time>[Time(101, 'h'), Time(3.6e5, 's')],
  <Time>[Time(32, 'dec'), Time(11687.76, 'd')],

  // Temperature
  <Temperature>[Temperature(60, 'K'), Temperature(99, 'R')],
  <Temperature>[Temperature(-39, 'F'), Temperature(233.15, 'K')],

  // Area
  <Area>[Area(0.8, 'km2'), Area(7.5e5, 'm2')],
  <Area>[Area(3e4, 'dam2'), Area(3, 'ha')],

  // SolidAngle
  <SolidAngle>[SolidAngle.si(3.5), SolidAngle(2.5, 'sr')],
  <SolidAngle>[SolidAngle(12345, 'sr'), SolidAngle(12345.0, 'deg2')],

  // Speed
  <Speed>[Speed(80, 'km/h'), Speed(50 / 3, 'm/s')],
  <Speed>[Speed(4.9, 'kn'), Speed(9, 'km/h')],
];

final List<List<Quantity<dynamic>>> ltTestCases = <List<Quantity<dynamic>>>[
  // Length
  <Length>[Length(2.5, 'm'), Length(350, 'cm')],
  <Length>[Length(31.415926, 'Mm'), Length(3.1415926e17, 'nm')],

  // Time
  <Time>[Time(100, 'h'), Time(3.7e5, 's')],
  <Time>[Time(32, 'y'), Time(11687.76, 'wk')],

  // Temperature
  <Temperature>[Temperature(55, 'K'), Temperature(100, 'R')],
  <Temperature>[Temperature(-40, 'F'), Temperature(234, 'K')],

  // Area
  <Area>[Area(0.75, 'km2'), Area(1e6, 'm2')],
  <Area>[Area(3e4, 'm2'), Area(3, 'Mm2')],

  // SolidAngle
  <SolidAngle>[SolidAngle.si(2.5), SolidAngle(3.5, 'sr')],
  <SolidAngle>[SolidAngle(12345, 'deg2'), SolidAngle(12345.0, 'sr')],

  // Speed
  <Speed>[Speed(60, 'km/h'), Speed(20, 'm/s')],
  <Speed>[Speed(2.5, 'm/s'), Speed(8.5, 'ft/s')],
];
