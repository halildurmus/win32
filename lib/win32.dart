// win32.dart

// Exports the library to consuming Dart code

library win32;

export 'src/utf16.dart';

export 'src/constants.dart';
export 'src/macros.dart';
export 'src/structs.dart';
export 'src/win32.dart' hide user32, gdi32, kernel32, shell32, ole32;
