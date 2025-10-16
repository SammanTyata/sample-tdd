import 'package:test/test.dart';
import '../sample/lib/converter.dart';   // Dart import syntax

void main() {
  group('ConvertIntegerToWordedStringTests', () {
    // TODO: This test will become obsolete once the IntegerToWordedString
    // function is fully implemented as per the specifications.
    test('not implemented yet', () {
      expect(() => integerToWordedString(-1000000), throwsA(isA<UnimplementedError>()));
    });

    // TODO: Initial "red" test to code logic
    test('first positive integer is one', () {
      var number = 1;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('one'));
    });
  });
}