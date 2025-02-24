import 'structs.dart';

class WindowsException implements Exception {
  const WindowsException(this.hr, {this.message});

  final HRESULT hr;
  final String? message;
}
