import 'win32_error.dart';

final class Win32Result<T> {
  const Win32Result({required this.value, required this.error});

  final T value;
  final WIN32_ERROR error;
}
