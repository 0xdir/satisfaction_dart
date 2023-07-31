[![pub package](https://img.shields.io/pub/v/satifaction.svg)](https://pub.dev/packages/satifaction)
[![package publisher](https://img.shields.io/pub/publisher/satifaction.svg)](https://pub.dev/packages/satifaction/publisher)

[![Buy Me A Coffee](https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png "Buy Me A Coffee")](https://www.buymeacoffee.com/0xdir "Buy Me A Coffee")

A collection of customer satisfaction scores and metrics used by businesses 
to measure and assess customer satisfaction.

This library is designed to have minimal dependencies for use across multiple platforms.

## Using

The easiest way to use this library is via the top-level ```Satisfaction``` class.

```dart
import 'package:satisfaction/satisfaction.dart';

/// This example illustrates the main features of the library
///
/// For more examples, look at /tests
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

  /// Get CSAT score for several ratings
  double csatScore = satisfaction.csat(ratings: [1, 2, 3, 4, 5]).score;
  print('csat: $csatScore');

  /// Get a summary describing the ratings
  Map<String, dynamic> csatStats =
      satisfaction.csat(ratings: [1, 2, 3, 4, 5]).stats;
  print('csat stats: $csatStats');
}
```

## Supported Metrics

Implemented:
1. Customer Satisfaction Score (CSAT)
2. Net Promoter Score (NPS)

Not Implemented:
1. everything else, suggestions welcome

## Getting Help

Submit an issue on [github](https://github.com/0xdir/satisfaction_dart).

## How to contribute

All feedback and suggestions for improvements are welcome:

1. Open a discussion on [github](https://github.com/0xdir/satisfaction_dart)
2. Discuss proposed changes
3. Submit a PR (optional)

## Support my work

This package is possible thanks to the people and companies
who donate money, services or time to keep the project running.

If you're interested in becoming a Sponsor, Backer or Contributor
to expand the project, please visit my [github sponsors page](https://github.com/sponsors/0xdir).

Or [buy me a coffee](https://www.buymeacoffee.com/0xdir).