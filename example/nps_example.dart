import 'package:satisfaction/satisfaction.dart';

void main() {
  /// Initialize the main object
  Satisfaction satisfaction = Satisfaction();

  /// Get NPS score for several ratings
  double npsScore = satisfaction.nps(ratings: [1, 7, 7, 8, 9, 10]).score;
  print('nps: $npsScore');

  /// Get a summary describing the ratings
  Map<String, dynamic> npsStats =
      satisfaction.nps(ratings: [1, 7, 7, 8, 9, 10]).stats;
  print('nps stats: $npsStats');
}
