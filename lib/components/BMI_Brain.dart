import 'dart:math';

class BmiBrain {
  final int height;
  final int weight;
  BmiBrain({this.weight, this.height});
  double bmiCall() {
    return weight / pow(height / 100, 2);
  }

  bmiText() {
    if (bmiCall() > 30.0) return "Obesity";
    if (bmiCall() > 18.5 && bmiCall() < 24.9)
      return "Normal";
    else if (bmiCall() > 25 && bmiCall() < 29.9)
      return "Overweight";
    else
      return "Underweight";
  }

  bmiSuggestion() {
    if (bmiCall() > 30)
      return "Your BMI is to much high you should do more workout";
    else if (bmiCall() > 18.5 && bmiCall() < 24.9)
      return "Your BMI is normal. Good job!";
    else if (bmiCall() > 25 && bmiCall() < 29.9)
      return "Your BMI is high you should do workout";
    else
      return "Your BMI is low you have to take more diet";
  }
}
