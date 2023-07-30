import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight})
      : _bmi = weight / pow(height / 100, 2);
  final height;
  final weight;
  late double _bmi;

  String calculateBmi() {
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Lol bruv... you need to hit the gym';
    } else if (_bmi > 18) {
      return 'Haha!! You lucky you mofo,'
          ' just a few more digits and you outta weight. You good tho.';
    } else {
      return 'Man!!! You better eat some meat! Fucking vegan.';
    }
  }

  String getResult() {
    if (_bmi <= 18) {
      return 'Underweight';
    } else if (_bmi > 18 && _bmi < 25) {
      return 'Normal';
    } else {
      return 'Overweight';
    }
  }
}
