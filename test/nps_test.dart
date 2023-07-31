import 'package:satisfaction/satisfaction.dart';
import 'package:test/test.dart';

void main() {
  final Satisfaction satisfaction = Satisfaction();

  test('Should get NPS', () {
    expect(
      satisfaction.nps(ratings: [1, 2, 6, 7, 8]).score,
      -60.0,
    );
  });

  test('Should get NPS', () {
    expect(
      satisfaction.nps(ratings: [1, 7, 7, 8, 9, 10]).score,
      16.7,
    );
  });

  test('Should get NPS argument error: provide one or more ratings', () {
    expect(
      () => satisfaction.nps(ratings: []),
      throwsArgumentError,
    );
  });

  test('Should get NPS argument error: ratings must be 10 or less', () {
    expect(
      () => satisfaction.nps(ratings: [1, 2, 3, 15]),
      throwsArgumentError,
    );
  });

  test('Should get NPS argument error: ratings must be 1 or more', () {
    expect(
      () => satisfaction.nps(ratings: [0, 2, 3, 4]),
      throwsArgumentError,
    );
  });
}
