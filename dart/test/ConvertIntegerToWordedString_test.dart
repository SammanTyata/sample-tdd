import 'package:test/test.dart';
import '../sample/lib/converter.dart';   // Dart import syntax

void main() {
  group('ConvertIntegerToWordedStringTests', () {
    
    // TODO: This test will become obsolete once the IntegerToWordedString
    /*
    // function is fully implemented as per the specifications.
    test('not implemented yet', () {
      expect(() => integerToWordedString(-1000000), throwsA(isA<UnimplementedError>()));
    });
    */

    // TODO: Initial "red" test to code logic
    test('first positive integer is one', () {
      var number = 1;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('one'));
    });

    // Test single digit
    test('six converts correctly', () {
      expect(integerToWordedString(6).toLowerCase(), equals('six'));
    });
    
    // Test teens
    test('fifteen converts correctly', () {
      expect(integerToWordedString(15).toLowerCase(), equals('fifteen'));
    });
    
    // Test tens
    test('twenty-one converts correctly', () {
      expect(integerToWordedString(21).toLowerCase(), equals('twenty-one'));
    });
    
    // Test hundreds
    test('one hundred twenty-three converts correctly', () {
      expect(integerToWordedString(123).toLowerCase(), 
            equals('one hundred twenty-three'));
    });
    
    // Test thousands
    test('twelve thousand three hundred forty-five converts correctly', () {
      expect(integerToWordedString(12345).toLowerCase(), 
            equals('twelve thousand three hundred forty-five'));
    });
    
    // Test millions
    test('one million two hundred thirty-four thousand five hundred sixty-seven', () {
      expect(integerToWordedString(1234567).toLowerCase(), 
            equals('one million two hundred thirty-four thousand five hundred sixty-seven'));
    });
    
    // Test billions
    test('one billion converts correctly', () {
      expect(integerToWordedString(1000000000).toLowerCase(), equals('one billion'));
    });
    
    // Test negative number
    test('negative forty-two converts correctly', () {
      expect(integerToWordedString(-42).toLowerCase(), equals('negative forty-two'));
    });
  
  });
}