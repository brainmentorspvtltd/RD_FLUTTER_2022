import 'dart:math';

class BMICalculatorBain {
  final int weight;
  final int height;

  late double _bmi;

  BMICalculatorBain(this.weight, this.height);

  String calculateBMI() {
    //weigth /height sequre
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Over weight";
    }
    if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return "Oops underweight eat some extra food";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
