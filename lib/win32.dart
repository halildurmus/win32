// win32.dart

// Exports the library to Dart code callers

library win32;

export 'src/utf16.dart';

export 'src/constants.dart';
export 'src/macros.dart';
export 'src/structs.dart';
export 'src/win32.dart' hide user32, gdi32, kernel32, shell32, comdlg32, ole32;

export 'src/com/IShellItemArray.dart' show IShellItemArray, IID_IShellItemArray;
export 'src/com/IShellItem.dart' show IShellItem, IID_IShellItem;
export 'src/com/IFileOpenDialog.dart'
    show
        IFileOpenDialog,
        IID_IFileOpenDialog,
        FileOpenDialog,
        CLSID_FileOpenDialog;
export 'src/com/IFileSaveDialog.dart'
    show
        IFileSaveDialog,
        IID_IFileSaveDialog,
        FileSaveDialog,
        CLSID_FileSaveDialog;
export 'src/com/IFileDialog.dart' show IFileDialog, IID_IFileDialog;
export 'src/com/IModalWindow.dart' show IModalWindow, IID_IModalWindow;
export 'src/com/IUnknown.dart' show IUnknown, IID_IUnknown;
export 'src/com/combase.dart' show COMObject, COMException;
