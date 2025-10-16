import 'dart:io';
import '../sample/lib/converter.dart'; 

void main(List<String> args) {
  if (args.length < 1) { 
    print('Expected parameter <integer>');
    exit(1);
  }
  
  int number;
  try {
    number = int.parse(args[0]);
  } catch (e) {
    print('Expected parameter <integer> is not a valid number');
    exit(1);
  }
  
  try {
    var wordedString = integerToWordedString(number);
    print(wordedString);
    exit(0);
  } catch (e) {
    print(e.toString());
    exit(1);
  }
}
// COMPILE AND RUN WITH: dart program.dart 123