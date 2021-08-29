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
