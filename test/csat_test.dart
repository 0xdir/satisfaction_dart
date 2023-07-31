import 'package:satisfaction/satisfaction.dart';
import 'package:test/test.dart';

void main() {
  final Satisfaction satisfaction = Satisfaction();

  test('Should get CSAT', () {
    expect(
      satisfaction.csat(ratings: [1, 2, 3, 4, 5]).score,
      40.0,
    );
  });

  test('Should get CSAT', () {
    expect(
      satisfaction.csat(ratings: [1, 2, 3, 4]).score,
      25.0,
    );
  });

  test('Should get CSAT argument error: provide one or more ratings', () {
    expect(
      () => satisfaction.csat(ratings: []),
      throwsArgumentError,
    );
  });

  test('Should get CSAT argument error: ratings must be 5 or less', () {
    expect(
      () => satisfaction.csat(ratings: [1, 2, 3, 15]),
      throwsArgumentError,
    );
  });

  test('Should get CSAT argument error: ratings must be 1 or more', () {
    expect(
      () => satisfaction.csat(ratings: [0, 2, 3, 4]),
      throwsArgumentError,
    );
  });
}
