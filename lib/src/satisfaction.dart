import 'package:satisfaction/helpers/round_to_decimals.dart';
import 'result.dart';

/// The main object
class Satisfaction {
  /// Customer Satisfaction Score (CSAT)
  ///
  /// Provide a list of [ratings] from 1-5.
  Result csat({required List<int> ratings}) {
    int satisfiedRespondents = 0;

    /// Check if rating is empty.
    if (ratings.isEmpty) {
      throw ArgumentError(
          'Provide one or more ratings in a list eg. [1,2,4,5]');
    }

    /// Check if there is a rating greater than 5.
    for (int i = 0; i < ratings.length; i++) {
      if (ratings[i] > 5) {
        throw ArgumentError('Rating must be 5 or less. '
            'Rating #${i + 1} is: ${ratings[i]}');
      }

      /// Check if there is a rating less than 1.
      if (ratings[i] < 1) {
        throw ArgumentError('Rating must be 1 or more. '
            'Rating #${i + 1} is: ${ratings[i]}');
      }

      /// Classify satisfied ratings
      if (ratings[i] >= 4) {
        satisfiedRespondents += 1;
      }
    }

    /// Calculate CSAT. Returns a percentage eg. 34%
    double score = roundTo(
      candidate: satisfiedRespondents / ratings.length * 100,
      decimals: 1,
    );

    /// A summary of the ratings
    Map<String, dynamic> stats = {
      "numberOfRespondents": ratings.length,
      "satisfiedRespondents": satisfiedRespondents,
      "unsatisfiedRespondents": ratings.length - satisfiedRespondents,
    };

    return Result(score, stats);
  }

  /// Net Promoter Score (NPS)
  ///
  /// Provide a list of [ratings] from 1-10.
  Result nps({required List<int> ratings}) {
    int promoters = 0;
    int passives = 0;
    int detractors = 0;

    /// Check if rating is empty.
    if (ratings.isEmpty) {
      throw ArgumentError(
          'Provide one or more ratings in a list eg. [1,2,4,5]');
    }

    /// Check if there is a rating greater than 10.
    for (int i = 0; i < ratings.length; i++) {
      if (ratings[i] > 10) {
        throw ArgumentError('Rating must be 10 or less. '
            'Rating #${i + 1} is: ${ratings[i]}');
      }

      /// Check if there is a rating less than 1.
      if (ratings[i] < 1) {
        throw ArgumentError('Rating must be 1 or more. '
            'Rating #${i + 1} is: ${ratings[i]}');
      }

      /// Classify rating as a promoter, detractor or passive.
      if (ratings[i] >= 9) {
        promoters += 1;
      } else if (ratings[i] <= 6) {
        detractors += 1;
      } else {
        passives += 1;
      }
    }

    /// Calculate NPS score
    double score = roundTo(
        candidate: promoters / ratings.length * 100 -
            detractors / ratings.length * 100,
        decimals: 1);

    /// A summary of the ratings
    Map<String, dynamic> stats = {
      "numberOfRespondents": ratings.length,
      "promoters": promoters,
      "detractors": detractors,
      "passives": passives,
    };

    return Result(score, stats);
  }
}
