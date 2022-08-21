import 'dart:math';

class BmiBrain {
  int height;
  int weight;
  double bmi = 0;

  BmiBrain({required this.height, required this.weight});

  String getBmiResult() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getTextResult() {
    if (bmi >= 25) {
      return "OverWeight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation()
  {
    if (bmi >= 25) {
      return "You have higher then normal body weight. Try to exercise more.";
    } else if (bmi > 18.5) {
      return "You have a normal body weight. Good Job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more!";
    }
  }
}
