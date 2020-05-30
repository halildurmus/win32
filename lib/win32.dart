// win32.dart

// Exports the library to Dart code callers

library win32;

export 'src/utf16.dart';

export 'src/constants.dart';
export 'src/macros.dart';
export 'src/structs.dart';
export 'src/win32.dart' hide user32, gdi32, kernel32, shell32, comdlg32, ole32;

export 'src/com/IFileDialog.dart'
    show IFileDialog, FileDialog, FILEOPENDIALOGOPTIONS;
export 'src/com/IShellItem.dart' show IShellItem, ShellItem, SIGDN;
export 'src/com/utils.dart' show COMException;
