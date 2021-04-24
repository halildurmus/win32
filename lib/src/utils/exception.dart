class WinmdException implements Exception {
  final String message;

  WinmdException(this.message);

  @override
  String toString() => 'WinmdException: $message';
}
