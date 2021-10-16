import 'package:converter/converter.dart';
import 'package:test/test.dart';

import 'quantities/area_testcase.dart';
import 'quantities/base/length_testcase.dart';
import 'quantities/base/mass_testcase.dart';
import 'quantities/base/temperature_testcase.dart';
import 'quantities/base/time_testcase.dart';
import 'quantities/force_testcase.dart';
import 'quantities/frequency_testcase.dart';
import 'quantities/quantity_testcase.dart';
import 'quantities/solid_angle_testcase.dart';
import 'quantities/speed_testcase.dart';

void main() {
  testAdditions();
  testSubtractions();
  testEQs();
  testGTs();
  testLTs();
  testGTEs();
  testLTEs();
  testConverters();
}

void testAdditions() {
  addTestCases.forEach((List<dynamic> testCase) {
    final Quantity<dynamic> sum = testCase[0] + testCase[1];

    test('sum.siValue == ${testCase[2]}', () {
      expect(sum.siValue, fractionalCloseTo(testCase[2], 1e-6));
    });
  });
}

void testSubtractions() {
  subtractTestCases.forEach((List<dynamic> testCase) {
    final Quantity<dynamic> difference = testCase[0] - testCase[1];

    test('difference.siValue == ${testCase[2]}', () {
      expect(difference.siValue, fractionalCloseTo(testCase[2], 1e-6));
    });
  });
}

void testEQs() {
  eqTestCases.forEach((List<Quantity<dynamic>> testCase) {
    test('${testCase[0]} == ${testCase[1]}', () {
      expect(testCase[0] == testCase[1], equals(true));
    });
  });
}

void testGTs() {
  gtTestCases.forEach((List<Quantity<dynamic>> testCase) {
    test('${testCase[0]} > ${testCase[1]}', () {
      expect(testCase[0] > testCase[1], equals(true));
    });
  });
}

void testLTs() {
  ltTestCases.forEach((List<Quantity<dynamic>> testCase) {
    test('${testCase[0]} < ${testCase[1]}', () {
      expect(testCase[0] < testCase[1], equals(true));
    });
  });
}

void testGTEs() {
  <List<Quantity<dynamic>>>[
    ...gtTestCases,
    ...eqTestCases,
  ].forEach((List<Quantity<dynamic>> testCase) {
    test('${testCase[0]} >= ${testCase[1]}', () {
      expect(testCase[0] >= testCase[1], equals(true));
    });
  });
}

void testLTEs() {
  <List<Quantity<dynamic>>>[
    ...ltTestCases,
    ...eqTestCases,
  ].forEach((List<Quantity<dynamic>> testCase) {
    test('${testCase[0]} <= ${testCase[1]}', () {
      expect(testCase[0] <= testCase[1], equals(true));
    });
  });
}

void testConverters() {
  testConverter(lengthConverter);
  testConverter(massConverter);
  testConverter(temperatureConverter);
  testConverter(timeConverter);

  testConverter(areaConverter);
  testConverter(forceConverter);
  testConverter(frequencyConverter);
  testConverter(solidAngleConverter);
  testConverter(speedConverter);
}

void testConverter(Map<String, dynamic> converter) {
  converter['testCases'].forEach((Map<String, dynamic> testCase) {
    final dynamic quantity = testCase['quantity'];

    group('$quantity', () {
      test('siValue == ${testCase['siValue']}', () {
        expect(quantity.siValue, fractionalCloseTo(testCase['siValue'], 1e-6));
      });

      testCase['valueIn'].forEach((String unitSymbol, num value) {
        test('valueIn($unitSymbol) == $value', () {
          expect(quantity.valueIn(unitSymbol), fractionalCloseTo(value, 1e-6));
        });
      });
    });
  });
}

Matcher fractionalCloseTo(num value, num fractionalDelta) =>
    closeTo(value, (value * fractionalDelta).abs());
