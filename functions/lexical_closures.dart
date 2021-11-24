import 'dart:math' as math;

void main() {
  String? name;
  name ??= "Ram";
  print(name);
}

Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}
