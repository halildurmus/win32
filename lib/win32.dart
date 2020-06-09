// win32.dart

// Exports the library to Dart code callers

library win32;

export 'src/utf16.dart';

export 'src/constants.dart';
export 'src/exceptions.dart';
export 'src/macros.dart';
export 'src/structs.dart';
export 'src/win32.dart'
    hide user32, gdi32, kernel32, shell32, comdlg32, ole32, oleaut32;

export 'src/combase.dart';
export 'src/comerrors.dart';

export 'src/com/IDesktopWallpaper.dart'
    show
        IDesktopWallpaper,
        IID_IDesktopWallpaper,
        DesktopWallpaper,
        CLSID_DesktopWallpaper;
export 'src/com/IEnumWbemClassObject.dart'
    show IEnumWbemClassObject, IID_IEnumWbemClassObject;
export 'src/com/IFileDialog.dart' show IFileDialog, IID_IFileDialog;
export 'src/com/IFileDialogCustomize.dart'
    show IFileDialogCustomize, IID_IFileDialogCustomize;
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
export 'src/com/IModalWindow.dart' show IModalWindow, IID_IModalWindow;
export 'src/com/IShellItem.dart' show IShellItem, IID_IShellItem;
export 'src/com/IShellItem2.dart' show IShellItem2, IID_IShellItem2;
export 'src/com/IShellItemArray.dart' show IShellItemArray, IID_IShellItemArray;
export 'src/com/IShellItemFilter.dart'
    show IShellItemFilter, IID_IShellItemFilter;
export 'src/com/IUnknown.dart' show IUnknown, IID_IUnknown;
export 'src/com/IWbemClassObject.dart'
    show IWbemClassObject, IID_IWbemClassObject;
export 'src/com/IWbemContext.dart' show IWbemContext, IID_IWbemContext;
export 'src/com/IWbemLocator.dart'
    show IWbemLocator, IID_IWbemLocator, WbemLocator, CLSID_WbemLocator;
export 'src/com/IWbemServices.dart' show IWbemServices, IID_IWbemServices;
