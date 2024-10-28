/// Exception thrown to signal errors that occur while performing clipboard
/// operations.
final class ClipboardException implements Exception {
  const ClipboardException(this.message);

  final String message;

  @override
  String toString() => 'ClipboardException: $message';
}
