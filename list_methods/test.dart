void main() {
  List<int> names = [10, 22, 4, 60, 30, 15];
  List<int> newList = names.where((element) => element > 15).toList();
  newList.sort();
  //names.forEach(printMsg);
  names.isEmpty ? print("List is empty") : print('list is not empty');

  var list1 = [1, 2, 3, 4, 5];
  var list2 = [3243, 34, 34];

  var list3 = [...list1, ...list2];
  var list4 = [list1, list2].expand((x) => x).toList();
  print(list3);

  var myNewList = ["Ram", "Ajay", "Vyj"];
  print(myNewList.asMap());

  List<int> salaries = [3243, 3, 3, 4, 223];
  salaries[0];
  Set<int> sets = {23, 3, 34, 35, 36};
  sets.elementAt(0);
  salaries.contains(4);

  final users = {"name": "Ravi", "age": 30};
  users["addresss"] = "delhi";

  final Map<int, dynamic> newusers = {0: "asdf"};
}

printMsg(String value) {
  print(value);
}

List<int> multipleInts() {
  return [2, 2, 3, 4, 5];
}
