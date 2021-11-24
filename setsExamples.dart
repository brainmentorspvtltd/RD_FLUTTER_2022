void main() {
  // List<String> names = ['Ram', 'Shayam'];
  // print(names[1]);
  //Set<int> sets = {};
  var set1 = {1, 4, 3, 55};
  var set2 = {1, 14, 3, 55};
  var newSEt = set1.difference(set2);
  print(newSEt);
  set1.union(set2);
  set1.intersection(set2);
  print(set1);

  var values = {"Ram", "Shayam", "Ram"};
  print(values);
}
