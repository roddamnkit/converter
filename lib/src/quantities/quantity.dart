import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:invertible/invertible.dart';

import 'base/base_quantity.dart';
import 'unit.dart';

/// Superclass of all quantities
abstract class Quantity<Q extends Quantity<Q>> with EquatableMixin {
  /// Constructs a quantity with the magnitude and the unit
  Quantity(num magnitude, String unitSymbol, Dimension<Q> dimension)
      : this.si(dimension.convert(magnitude, from: unitSymbol), dimension);

  /// Constructs a quantity with the magnitude in SI unit
  const Quantity.si(this.magnitudeInSI, [this._dimension]);

  /// magnitude in SI unit of this quantity
  final num magnitudeInSI;

  final Dimension<Q>? _dimension;

  /// Dimension of this quantity
  Dimension<Q> get dimension => _dimension!;

  @override
  List<Object> get props => <Object>[magnitudeInSI, dimension];

  /// Returns the magnitude of this quantity in [unitSymbol] unit
  num magnitudeIn(String unitSymbol) =>
      dimension.convert(magnitudeInSI, to: unitSymbol);

  /// Add operator
  Q operator +(Q q) => dimension.si(magnitudeInSI + q.magnitudeInSI);

  /// Subtract operator
  Q operator -(Q q) => dimension.si(magnitudeInSI - q.magnitudeInSI);

  /// Greater than operator
  bool operator >(Q q) => magnitudeInSI > q.magnitudeInSI;

  /// Less than operator
  bool operator <(Q q) => magnitudeInSI < q.magnitudeInSI;

  /// Greater than or equal operator
  bool operator >=(Q q) => this > q || this == q;

  /// Less than or equal operator
  bool operator <=(Q q) => this < q || this == q;

  @override
  String toString() => '$magnitudeInSI $dimension';
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

  /// Converts [magnitude] between different units
  num convert(
    num magnitude, {
    String? from,
    String? to,
  }) {
    final num magnitudeInSI;
    if (from != null) {
      final Unit fromUnit = unit(from);
      final InvertibleRealFunction? toSI = fromUnit.toSI;
      if (toSI != null) {
        magnitudeInSI = toSI(magnitude);
      } else {
        num factor = 1;
        dimension.forEach((BaseDimension<dynamic> baseDimension, num exponent) {
          final String baseUnitSymbol =
              fromUnit.baseUnitSymbols[baseDimension]!;
          factor *=
              pow(baseDimension.convert(1, from: baseUnitSymbol), exponent);
        });
        magnitudeInSI = factor * magnitude;
      }
    } else {
      magnitudeInSI = magnitude;
    }

    final num magnitude2;
    if (to != null) {
      final Unit toUnit = unit(to);
      final InvertibleRealFunction? fromSI = toUnit.fromSI;
      if (fromSI != null) {
        magnitude2 = fromSI(magnitudeInSI);
      } else {
        num factor = 1;
        dimension.forEach((BaseDimension<dynamic> baseDimension, num exponent) {
          final String baseUnitSymbol = toUnit.baseUnitSymbols[baseDimension]!;
          factor *= pow(baseDimension.convert(1, to: baseUnitSymbol), exponent);
        });
        magnitude2 = factor * magnitudeInSI;
      }
    } else {
      magnitude2 = magnitudeInSI;
    }

    return magnitude2;
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

  /// Creates a quantity with the magnitude in SI unit
  Q si(num magnitudeInSI);

  @override
  String toString() => '$dimension';
}

///
abstract class Dimensionless<Q extends Quantity<Q>> extends Dimension<Q> {
  ///
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
  BQ si(num magnitudeInSI) => baseDimension.si(magnitudeInSI);
}
