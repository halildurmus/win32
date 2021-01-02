import 'dart:io';

abstract class AppError extends Error {
  String get message;

  static final isDebug = Platform.environment['dart_debug'] == 'true';

  @override
  String toString() =>
      normalizeMessage(message) + getStackTraceIfDebug;

  String get getStackTraceIfDebug => isDebug ? '\n$stackTrace' : '';

  static String normalizeMessage(String msg) => msg.replaceAll('        ', '');
}
