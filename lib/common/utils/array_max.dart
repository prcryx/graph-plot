extension NumArrayExtension on List<double> {
  double get maxNumber =>
      reduce((value, element) => value > element ? value : element);
}
