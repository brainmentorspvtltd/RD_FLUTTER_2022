void main() {
  final List<int> myInts = [11, 4, 3, 5]
    ..add(30)
    ..sort()
    ..map((e) => print(e)).toList();
  print(myInts);

  //.
  //..
  //...
  List<int?>? interers = [223, null];
  interers = null;

  List<String> strings = [];
  List<num> numerb = [];
  List<Object> objects = ["adsfasd", 2323, true];

  // List<String> newList2 = ["w3w3", "23234"];
  // bool isAddd = false;
  // List<String> newList = [
  //   "Ab",
  //   "Bc",
  //   if (isAddd) "adsfasdf",
  //   for (var item in newList2) item
  // ];

  // //...
  // //...?
  // List<int>? list4;
  // var list1 = [1, 2, 4];
  // var list2 = [4, 5, 6];
  //   list4 = [44,56];
  // //list1.addAll(list2);
  // var list3 = [1, ...?list4];
  // print(list3);
}
