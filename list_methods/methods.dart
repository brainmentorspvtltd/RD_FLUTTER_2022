void main() {
  List<String> names = ['Ram', 'Raj'];

  //foreach method
  names.forEach((name) => print(name));

  //get the length of list
  print(names.length);

  //reverse list
  print(names.reversed);

  //get first element
  print(names.first);

  // bool isEmpty with tranary operator
  names.isEmpty ? print("Empty") : print("not empty");

  //compare by condition inside anonymose function and return a new lsit
  final newList = names.where((name) => name == "Ram").toList();

  //get first matching value
  final String name = names.firstWhere((name) => name == "Ram");

  //add item into list
  names.add("Pawan");
  names.addAll(['Kavita', 'Vijay']);

//convert list to map
  final mapData = names.asMap();
  mapData[0];

  //check if value exist in list
  final bool isExists = names.contains("Ram");
  print(isExists);

//get value   by index
  final value = names.elementAt(2);

  //add list together by using add() addAll(), ..., ...? operators
  final list1 = [1, 2, 4];
  final list2 = [3, 5, 6];
  //  list1.addAll(list2);
  final list3 = [...list1, ...list2];
  final list4 = null;
  final list5 = [43, 22, ...?list4];

  //every() does each element contains given value
  final list6 = ["Kavita", "Pawan", "Rohtan"];
  final res = list6.every((element) => element.contains('a'));
  print(res);

//expand for flattened list
  var pairs = [
    [1, 2],
    [3, 4]
  ];
  var flattened = pairs.expand((pair) => pair).toList();
  print(flattened); // => [1, 2, 3, 4];

  //another example
  var data1 = [23, 21, 55, 33];
  var data2 = [2323, 155, 3];
  var data3 = [data1, data2].expand((x) => x).toList();
  print(data3);

  //reduce return a single value combine elements
  final list7 = [323, 23, 23];
  final sum = list7.reduce((value, element) => value + element);
  print(sum);

  //collection if and collectin for
  bool isLoggedIn = true;
  var nav = ['Home', 'AboutUs', if (isLoggedIn) 'UserName'];

  //collection for
  var list8 = [21, 33, 22];
  var list9 = [32, for (var item in list8) item];
}
