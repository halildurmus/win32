// win32.dart

// Exports the library to Dart code callers

library win32;

// An extension helper for UTF-16 strings
export 'src/utf16.dart';

// Core Win32 APIs, constants and macros
export 'src/constants.dart';
export 'src/exceptions.dart';
export 'src/macros.dart';
export 'src/structs.dart';
export 'src/win32.dart'
    hide user32, gdi32, kernel32, shell32, comdlg32, ole32, oleaut32;

// COM foundational exports
export 'src/com/combase.dart';

// WinRT foundational exports
export 'src/winrt/winrt_constants.dart';
export 'src/winrt/winrt_prototypes.dart' hide winrt, winrt_string;
export 'src/winrt/winrt_helpers.dart';

// COM interfaces
export 'src/generated/IDesktopWallpaper.dart'
    show
        IDesktopWallpaper,
        IID_IDesktopWallpaper,
        DesktopWallpaper,
        CLSID_DesktopWallpaper;
export 'src/generated/IEnumWbemClassObject.dart'
    show IEnumWbemClassObject, IID_IEnumWbemClassObject;
export 'src/generated/IFileDialog.dart' show IFileDialog, IID_IFileDialog;
export 'src/generated/IFileDialogCustomize.dart'
    show IFileDialogCustomize, IID_IFileDialogCustomize;
export 'src/generated/IFileOpenDialog.dart'
    show
        IFileOpenDialog,
        IID_IFileOpenDialog,
        FileOpenDialog,
        CLSID_FileOpenDialog;
export 'src/generated/IFileSaveDialog.dart'
    show
        IFileSaveDialog,
        IID_IFileSaveDialog,
        FileSaveDialog,
        CLSID_FileSaveDialog;
export 'src/generated/IInspectable.dart' show IInspectable, IID_IInspectable;
export 'src/generated/IModalWindow.dart' show IModalWindow, IID_IModalWindow;
export 'src/generated/IShellItem.dart' show IShellItem, IID_IShellItem;
export 'src/generated/IShellItem2.dart' show IShellItem2, IID_IShellItem2;
export 'src/generated/IShellItemArray.dart'
    show IShellItemArray, IID_IShellItemArray;
export 'src/generated/IShellItemFilter.dart'
    show IShellItemFilter, IID_IShellItemFilter;
export 'src/generated/IUnknown.dart' show IUnknown, IID_IUnknown;
export 'src/generated/IWbemClassObject.dart'
    show IWbemClassObject, IID_IWbemClassObject;
export 'src/generated/IWbemContext.dart' show IWbemContext, IID_IWbemContext;
export 'src/generated/IWbemLocator.dart'
    show IWbemLocator, IID_IWbemLocator, WbemLocator, CLSID_WbemLocator;
export 'src/generated/IWbemServices.dart' show IWbemServices, IID_IWbemServices;

// WinRT interfaces
export 'src/generated/IAsyncInfo.dart' show IAsyncInfo, IID_IAsyncInfo;
export 'src/generated/ICalendar.dart' show ICalendar, IID_ICalendar;
export 'src/generated/IFileOpenPicker.dart'
    show IFileOpenPicker, IID_IFileOpenPicker;
