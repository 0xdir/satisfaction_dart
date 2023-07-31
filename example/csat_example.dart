import 'package:satisfaction/satisfaction.dart';

void main() {
  /// Initialize the main object
  Satisfaction satisfaction = Satisfaction();

  /// Get CSAT score for several ratings
  double csatScore = satisfaction.csat(ratings: [1, 2, 3, 4, 5]).score;
  print('csat: $csatScore');

  /// Get a summary describing the ratings
  Map<String, dynamic> csatStats =
      satisfaction.csat(ratings: [1, 2, 3, 4, 5]).stats;
  print('csat stats: $csatStats');
}
