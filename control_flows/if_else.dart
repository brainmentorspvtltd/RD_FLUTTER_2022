void main() {
  var num1 = 10;
  var num2 = 20;
  if (num1 > num2) {
    print("Num1 is greater");
  } else {
    print("Num2 is greater");
  }

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  for (var i = 0; i < numbers.length; i++) {}
  for (var nums in numbers) {}

  var newNum = 5;
  var factorial = 1;
  while (newNum >= 1) {
    factorial = factorial * newNum;
    newNum--;
  }
  do {
    print("Print");
  } while (newNum > 1);

  List<int> values = [1, 2, 3, 4, 5];
  for (int i = 0; i < values.length; i++) {
    if (i == 3) {
      break;
    }
    print(i);
  }
}
