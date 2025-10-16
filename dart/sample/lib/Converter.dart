String integerToWordedString(int number) {
  
  // Handle zero
  if (number == 0) {
    return 'zero';
  }
  
  // Handle negative numbers by adding "negative" and converting the positive version
  if (number < 0) {
    return 'negative ${integerToWordedString(-number)}';
  }
  
  // Words for basic numbers
  const ones = [
    '', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine',
    'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
    'seventeen', 'eighteen', 'nineteen'
  ];
  
  const tens = [
    '', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'
  ];
  
  String result = '';
  
  // Billions place (1,000,000,000+)
  if (number >= 1000000000) {
    int billions = number ~/ 1000000000;  // How many billions?
    result += '${integerToWordedString(billions)} billion ';
    number = number % 1000000000;  // Remove the billions part
  }
  
  // Millions place (1,000,000+)
  if (number >= 1000000) {
    int millions = number ~/ 1000000;  // How many millions?
    result += '${integerToWordedString(millions)} million ';
    number = number % 1000000;  // Remove the millions part
  }
  
  // Thousands place (1,000+)
  if (number >= 1000) {
    int thousands = number ~/ 1000;  // How many thousands?
    result += '${integerToWordedString(thousands)} thousand ';
    number = number % 1000;  // Remove the thousands part
  }
  
  // Hundreds place (100+)
  if (number >= 100) {
    int hundreds = number ~/ 100;  // How many hundreds?
    result += '${ones[hundreds]} hundred ';
    number = number % 100;  // Remove the hundreds part
  }
  
  // Tens place (20-99)
  if (number >= 20) {
    int tensDigit = number ~/ 10;  // Get the tens digit
    result += tens[tensDigit];
    int onesDigit = number % 10;  // Get the ones digit
    if (onesDigit > 0) {
      result += '-${ones[onesDigit]}';  // Add hyphen for compound numbers
    }
    number = 0;  // We've handled everything
  }
  
  // Ones place (1-19)
  if (number > 0) {
    result += ones[number];
  }
  
  return result.trim();  // Remove extra spaces

  
}