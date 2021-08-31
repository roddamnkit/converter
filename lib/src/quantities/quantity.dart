import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'unit.dart';

/// Superclass of all quantities
abstract class Quantity<Q extends Quantity<Q>> with EquatableMixin {
  /// Constructs a quantity with the value and the unit
  Quantity(num value, String unitSymbol, Dimension<Q> dimension)
      : this.si(dimension.convert(value, from: unitSymbol), dimension);

  /// Constructs a quantity with the value in SI unit
  const Quantity.si(this.siValue, [this._dimension]);

  /// value in SI unit of this quantity
  final num siValue;

  final Dimension<Q>? _dimension;

  /// Dimension of this quantity
  Dimension<Q> get dimension => _dimension!;

  @override
  List<Object> get props => <Object>[siValue.toDouble(), dimension];

  /// Returns the value of this quantity in [unitSymbol] unit
  num valueIn(String unitSymbol) => dimension.convert(siValue, to: unitSymbol);

  /// Add operator
  Q operator +(Q q) => dimension.si(siValue + q.siValue);

  /// Subtract operator
  Q operator -(Q q) => dimension.si(siValue - q.siValue);

  /// Greater than operator
  bool operator >(Q q) => siValue > q.siValue;

  /// Less than operator
  bool operator <(Q q) => siValue < q.siValue;

  /// Greater than or equal operator
  bool operator >=(Q q) => this > q || this == q;

  /// Less than or equal operator
  bool operator <=(Q q) => this < q || this == q;

  @override
  String toString() => '$siValue ${dimension.siUnitSymbol}';
}

/// Superclass of all quantities' dimensions
abstract class Dimension<Q extends Quantity<Q>> {
  /// Constructs a quantity's dimension
  const Dimension(
    this.dimension, {
    required this.siUnitSymbol,
    required this.allUnits,
  });

  /// Returns base quantity's dimension
  static Dimension<BQ> base<BQ extends BaseQuantity<BQ>>(
          BaseDimension<BQ> baseDimension) =>
      _BaseDimensionImpl<BQ>(baseDimension);

  /// Represents dimensional expression
  final Map<BaseDimension<dynamic>, num> dimension;

  /// SI unit symbol
  final String siUnitSymbol;

  /// All units with symbols
  final Map<String, Unit> allUnits;

  /// Converts [value] between different units
  num convert(
    num value, {
    String? from,
    String? to,
  }) {
    final num siValue;
    if (from != null) {
      final Unit fromUnit = unit(from);
      final InvertibleRealFunction? toSI = fromUnit.toSI;
      if (toSI != null) {
        siValue = toSI(value);
      } else {
        num factor = 1;
        dimension.forEach((BaseDimension<dynamic> baseDimension, num exponent) {
          final String baseUnitSymbol =
              fromUnit.baseUnitSymbols[baseDimension]!;
          factor *=
              pow(baseDimension.convert(1, from: baseUnitSymbol), exponent);
        });
        siValue = factor * value;
      }
    } else {
      siValue = value;
    }

    final num value2;
    if (to != null) {
      final Unit toUnit = unit(to);
      final InvertibleRealFunction? fromSI = toUnit.fromSI;
      if (fromSI != null) {
        value2 = fromSI(siValue);
      } else {
        num factor = 1;
        dimension.forEach((BaseDimension<dynamic> baseDimension, num exponent) {
          final String baseUnitSymbol = toUnit.baseUnitSymbols[baseDimension]!;
          factor *= pow(baseDimension.convert(1, to: baseUnitSymbol), exponent);
        });
        value2 = factor * siValue;
      }
    } else {
      value2 = siValue;
    }

    return value2;
  }

  /// Returns unit with symbol
  Unit unit(String unitSymbol) {
    final Unit? unit = allUnits[unitSymbol.trim()];
    if (unit != null) {
      return unit;
    } else {
      throw ArgumentError.value(unitSymbol, 'unitSymbol', 'Non-existent unit');
    }
  }

  /// Creates a quantity with the value in SI unit
  Q si(num siValue);

  @override
  String toString() => '$dimension';
}

/// Superclass of all dimensionless quantities' dimensions
abstract class Dimensionless<Q extends Quantity<Q>> extends Dimension<Q> {
  /// Constructs a dimensionless quantity's dimension
  const Dimensionless({
    String siUnitSymbol = '',
    Map<String, Unit> allUnits = const <String, Unit>{},
  }) : super(
          const <BaseDimension<dynamic>, num>{},
          siUnitSymbol: siUnitSymbol,
          allUnits: allUnits,
        );
}

class _BaseDimensionImpl<BQ extends BaseQuantity<BQ>> extends Dimension<BQ> {
  _BaseDimensionImpl(this.baseDimension)
      : super(
          <BaseDimension<BQ>, num>{baseDimension: 1},
          siUnitSymbol: baseDimension.siUnitSymbol,
          allUnits: baseDimension.allUnits,
        );

  final BaseDimension<BQ> baseDimension;

  @override
  BQ si(num siValue) => baseDimension.si(siValue);
}
