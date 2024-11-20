import 'package:winmd/winmd.dart';

extension ModuleRefExtension on ModuleRef {
  /// Converts the dynamic library name into a valid Dart identifier by
  /// replacing any invalid characters (such as hyphens) with underscores and
  /// removing the file extension (e.g., `.dll`, `.cpl`, `.drv`, etc.).
  ///
  /// For example, `ole32.dll` becomes `ole32`.
  String get safeName =>
      name.replaceAll('-', '_').split('.').first.toLowerCase();
}
