import '../quantity.dart';
import 'base_unit.dart';

/// Superclass of all base quantities
abstract class BaseQuantity<BQ extends BaseQuantity<BQ>> extends Quantity<BQ> {
  /// Constructs a base quantity with the magnitude and the unit
  BaseQuantity(
      num magnitude, String unitSymbol, BaseDimension<BQ> baseDimension)
      : this.si(
            baseDimension.convert(magnitude, from: unitSymbol), baseDimension);

  /// Constructs a base quantity with the magnitude in SI base unit
  const BaseQuantity.si(num magnitudeInSI, this.baseDimension)
      : super.si(magnitudeInSI);

  /// Base dimension of this quantity
  final BaseDimension<BQ> baseDimension;

  @override
  Dimension<BQ> get dimension => Dimension.base(baseDimension);

  @override
  List<Object> get props => <Object>[magnitudeInSI, baseDimension];

  @override
  num magnitudeIn(String unitSymbol) =>
      baseDimension.convert(magnitudeInSI, to: unitSymbol);
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

  /// Converts [magnitude] between different base units
  num convert(
    num magnitude, {
    String? from,
    String? to,
  }) {
    final num magnitudeInSI =
        from != null ? unit(from).toSI(magnitude) : magnitude;
    final num magnitude2 =
        to != null ? unit(to).fromSI(magnitudeInSI) : magnitudeInSI;
    return magnitude2;
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

  /// Creates a base quantity with the magnitude in SI base unit
  BQ si(num magnitudeInSI);

  @override
  String toString() => symbol;
}
