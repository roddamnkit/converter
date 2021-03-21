import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';

/// Represents unit of a quantity
class Unit {
  /// Constructs an unit of a quantity
  const Unit(
    this.name, {
    this.baseUnitSymbols = const <BaseDimension<dynamic>, String>{},
    List<InvertibleRealFunction>? toSI,
  }) : _toSI = toSI;

  /// Name of this unit
  final String name;

  /// Base units constituting this unit
  final Map<BaseDimension<dynamic>, String> baseUnitSymbols;

  final List<InvertibleRealFunction>? _toSI;

  /// Returns function which converts a given magnitude from this unit to SI unit
  InvertibleRealFunction? get toSI => _toSI?.compose();

  /// Returns function which converts a given magnitude from SI unit to this unit
  InvertibleRealFunction? get fromSI => _toSI?.inverse();
}
