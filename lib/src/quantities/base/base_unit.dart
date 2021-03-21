import 'package:invertible/invertible.dart';

import '../unit.dart';

/// Represents unit of a base quantity
class BaseUnit extends Unit {
  /// Constructs an unit of a base quantity
  const BaseUnit(
    String name, {
    required List<InvertibleRealFunction> toSI,
  }) : super(name, toSI: toSI);

  @override
  InvertibleRealFunction get toSI => super.toSI!;

  @override
  InvertibleRealFunction get fromSI => super.fromSI!;
}
