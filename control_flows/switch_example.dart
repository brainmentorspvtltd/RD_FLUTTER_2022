enum MyColors { green, red, yellow }

void main() {
  MyColors color = MyColors.green;
  switch (color) {
    case MyColors.red:
    case MyColors.green:
      print("Color is combined");
      break;
    case MyColors.green:
      print("Color is Green");
      break;
    default:
      print("No color");
  }
}
