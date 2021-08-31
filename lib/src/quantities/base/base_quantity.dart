import '../quantity.dart';
import 'base_unit.dart';

/// Superclass of all base quantities
abstract class BaseQuantity<BQ extends BaseQuantity<BQ>> extends Quantity<BQ> {
  /// Constructs a base quantity with the value and the unit
  BaseQuantity(num value, String unitSymbol, BaseDimension<BQ> baseDimension)
      : this.si(baseDimension.convert(value, from: unitSymbol), baseDimension);

  /// Constructs a base quantity with the value in SI base unit
  const BaseQuantity.si(num siValue, this.baseDimension) : super.si(siValue);

  /// Base dimension of this quantity
  final BaseDimension<BQ> baseDimension;

  @override
  Dimension<BQ> get dimension => Dimension.base(baseDimension);

  @override
  List<Object> get props => <Object>[siValue.toDouble(), baseDimension];

  @override
  num valueIn(String unitSymbol) =>
      baseDimension.convert(siValue, to: unitSymbol);
}

/// Superclass of all base quantities' dimensions
abstract class BaseDimension<BQ extends BaseQuantity<BQ>> {
  /// Constructs a base quantity's dimension
  const BaseDimension({
    required this.symbol,
    required this.siUnitSymbol,
    required this.allUnits,
  });

  /// Dimensional symbol
  final String symbol;

  /// SI base unit symbol
  final String siUnitSymbol;

  /// All base units with symbols
  final Map<String, BaseUnit> allUnits;

  /// Converts [value] between different base units
  num convert(
    num value, {
    String? from,
    String? to,
  }) {
    final num siValue = from != null ? unit(from).toSI(value) : value;
    final num value2 = to != null ? unit(to).fromSI(siValue) : siValue;
    return value2;
  }

  /// Returns base unit with symbol
  BaseUnit unit(String unitSymbol) {
    final BaseUnit? unit = allUnits[unitSymbol.trim()];
    if (unit != null) {
      return unit;
    } else {
      throw ArgumentError.value(unitSymbol, 'unitSymbol', 'Non-existent unit');
    }
  }

  /// Creates a base quantity with the value in SI base unit
  BQ si(num siValue);

  @override
  String toString() => symbol;
}
