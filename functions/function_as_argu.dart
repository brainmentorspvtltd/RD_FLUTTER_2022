void main() {
  calc(() => print("hello world"));

  print(execute((a, b) => a + b));
}

//below method take a function as an argument
calc(Function callback) {
  callback();
}

int execute(int func(int a, int b)) => func(4, 3);

int sum(int a, int b) => a + b;

takeFunAsArg(sum) {
  sum(10, 20);
}
