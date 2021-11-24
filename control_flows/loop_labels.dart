void main() {
  OuterLoop:
  for (int i = 0; i <= 5; i++) {
    InnerLoop:for (var j = 0; j < 3; j++) {
      continue OuterLoop;
    }
    if (i == 3) {
      continue OuterLoop;
    }
  }
}
