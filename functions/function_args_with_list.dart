void main() {
  //showUser();
  var name = addValue("adsfadsf");
  print(name());
  calc(()=>print("value"));
}

calc(Function fn) {
  fn();
}

Function addValue(String name) {
  return () => print("Your name is $name");
}
