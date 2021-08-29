import 'package:converter/converter.dart';
import 'package:test/test.dart';

import 'quantities/area_testcase.dart';
import 'quantities/base/length_testcase.dart';
import 'quantities/base/temperature_testcase.dart';
import 'quantities/base/time_testcase.dart';
import 'quantities/quantity_testcase.dart';
import 'quantities/speed_testcase.dart';

void main() {
  testAdditions();
  testSubtractions();
  testConverters();
}

void testAdditions() {
  addTestCases.forEach((List<dynamic> testCase) {
    final Quantity<dynamic> sum = testCase[0] + testCase[1];

    test('sum.magnitudeInSI -> ${testCase[2]}', () {
      expect(sum.magnitudeInSI, fractionalCloseTo(testCase[2], 1e-6));
    });
  });
}

void testSubtractions() {
  subtractTestCases.forEach((List<dynamic> testCase) {
    final Quantity<dynamic> difference = testCase[0] - testCase[1];

    test('difference.magnitudeInSI -> ${testCase[2]}', () {
      expect(difference.magnitudeInSI, fractionalCloseTo(testCase[2], 1e-6));
    });
  });
}

void testConverters() {
  testConverter(lengthConverter);
  testConverter(temperatureConverter);
  testConverter(timeConverter);

  testConverter(areaConverter);
  testConverter(speedConverter);
}

void testConverter(Map<String, dynamic> converter) {
  converter['testCases'].forEach((Map<String, dynamic> testCase) {
    final dynamic quantity = testCase['quantity'];

    group('$quantity', () {
      test('magnitudeInSI -> ${testCase['magnitudeInSI']}', () {
        expect(quantity.magnitudeInSI,
            fractionalCloseTo(testCase['magnitudeInSI'], 1e-6));
      });

      testCase['magnitudeIn'].forEach((String unitSymbol, num magnitude) {
        test('magnitudeIn($unitSymbol) -> $magnitude', () {
          expect(quantity.magnitudeIn(unitSymbol),
              fractionalCloseTo(magnitude, 1e-6));
        });
      });
    });
  });
}

Matcher fractionalCloseTo(num value, num fractionalDelta) =>
    closeTo(value, (value * fractionalDelta).abs());
