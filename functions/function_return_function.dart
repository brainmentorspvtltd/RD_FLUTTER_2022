void main() {
  var nameFn = showName("Ram");
  print(nameFn());
}

Function showName(String name) {
  return () => name;
}
