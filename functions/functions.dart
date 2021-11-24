void main() {}

//functions
//method1 to define a function

fun1() {}
//method 2 if not return any kind of value add void keyword
void fun2() {}

//method3 arrow function if function return a single value
fun3() => print("Hello");

//now functions with required positional argument arguments

int fun4(int num1, int num2) => num1 + num2;

//function with required postional and optional positional parameters
void fun5(int num1, [int? num2]) => print("Numbers are $num1 and $num2");

//function with required named parameters

fun6({required String name, required String lastName}) =>
    print("Your name is $name $lastName");

//function with optional named parameters
fun7({required String name, String? lastName}) {}

//required postional and required named paraters all together

fun8(String data, {required int otherValue}) {}
//we can't use optional positional parameters and named parameters together
//fun9({required String name},[String? lastname]){}

//function can return another function 
