/// Exception thrown when Windows returns an error.
class WindowsException implements Exception {
  final String message;

  WindowsException([this.message]);

  @override
  String toString() {
    if (message == null) return 'WindowsException';
    return 'Windows error: $message';
  }
}
