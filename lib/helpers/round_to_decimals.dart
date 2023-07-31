/// Rounds a [candidate] to the specified [decimals]
double roundTo({
  /// The candidate to perform the rounding
  required double candidate,

  /// The number of decimals to round to
  required int? decimals,
}) {
  switch (decimals) {
    case null:
      return candidate;
    case < 1:
      throw ArgumentError('Decimals should be greater than 0');
    default:
      return double.parse((candidate).toStringAsFixed(decimals));
  }
}
