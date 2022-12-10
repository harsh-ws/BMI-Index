class bmiCalculation {
  bmiCalculation({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / (height * height) * 10000;
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'NORMAL';
    } else if (_bmi > 24.9) {
      return 'HIGH';
    } else {
      return 'LOW';
    }
  }

  String interpretation() {
    if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You are doing great. Cheers.';
    } else if (_bmi > 24.9) {
      return 'Try to exercise and keep a check on eating habits.';
    } else {
      return 'You need to eat more.';
    }
  }
}
