void main() {
  String name = "Ram";
  String name1 = 'Ram';
  String name2 = """ 
  multi line stirng
  string string
  ok
  """;
  String name3 = '''
  another way to define multi line string
  this is test
  ''';

  String escapeString = 'It\'s this way';
  String escacpeString2 = "It's a way to define";
  String trimSpace = " This is the main Item    ".trim();
  String toUpperCase =
      "convert this to uppercase".toUpperCase(); //same as toLowerCase()
  List<String> spiltIntoLetters = "Splitme".split(" ");
  int stringToInt = int.parse("10");
  double intTodouble = double.parse("10");
  String intToString = 10.toString();
  double toDouble = 10.toDouble();
  int toInt = (10.3).toInt();
  String toStringFixed = (1.23234).toStringAsFixed(2);
}
 