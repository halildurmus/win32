// win32.dart

/// Support for programming against the Win32 API on Windows operating systems.
///
/// This library provides a wrapper around many useful functions from the API,
/// along with the necessary constants and structs that are supplied. With
/// thousands of APIs and interfaces in the Win32 API, many of which cover areas
/// that would be unlikely to be useful to a Dart or Flutter developer, this
/// library is not intended to be exhaustive. Instead, we focus on the core
/// Win32 APIs that are typically used for Windows development, along with
/// Win32, COM and Windows Runtime APIs that are likely to be wrapped by a
/// Flutter plugin author.
///
/// Win32 is at its heart a C-based API, and accordingly adopts the style and
/// idioms of that language, including heavy usage of pointers, structs
/// allocated on the heap, and null-terminated strings. As a result, you may
/// choose to wrap the exposed APIs in your application to make their invocation
/// more idiomatic for a Dart consumer.
///
/// ## Strings
///
/// Win32 strings are typically stored as null-terminated arrays of UTF-16 code
/// units. (Many older Windows APIs also offer an ANSI, or 8-bit representation,
/// but no effort has been made to wrap these APIs here: we use the wide
/// versions, which are suffixed with a capital 'W' (e.g. `FormatMessageW`).
///
/// You can use the [TEXT] function to convert a Dart string into a
/// `Pointer<Utf16>`, which can be passed to any Windows API expecting a string,
/// for example:
/// ```
///   ShellExecute(0, TEXT('open'), TEXT('notepad.exe'), nullptr, nullptr, SW_SHOW);
/// ```
///
/// To receive a string, allocate memory with a command like the following:
/// ```
///   final buffer = allocate<Uint16>(count: length).cast<Utf16>();
///   GetWindowText(hWnd, buffer, length);
/// ```
///
/// This allocates an array of `length` UTF-16 code units. The cast is necessary
/// because Utf16 has no length of itself. The returned value can be converted
/// back to a Dart string using an extension method that is included with the
/// library, as follows:
/// ```
///   print(buffer.unpackString(length));
/// ```
///
/// Windows Runtime APIs use `HSTRING` as their native type, which is created
/// with the [WindowsCreateString] API and deleted with the
/// [WindowsDeleteString] API. A Dart function may be used to convert to and from
/// `HSTRING`s, for example:
/// ```
///   final systemPtr = allocate<IntPtr>();
///   calendar.GetCalendarSystem(systemPtr);
///   print('The calendar system is ${convertFromHString(systemPtr)}.');
///    WindowsDeleteString(systemPtr.address);
/// ```

library win32;

// An extension helper for UTF-16 strings
export 'src/utf16.dart';

// Core Win32 APIs, constants and macros
export 'src/constants.dart';
export 'src/exceptions.dart';
export 'src/macros.dart';
export 'src/structs.dart';
export 'src/win32.dart'
    hide user32, gdi32, kernel32, psapi, shell32, comdlg32, ole32, oleaut32;

// COM foundational exports
export 'src/com/combase.dart';

// WinRT foundational exports
export 'src/winrt/winrt_constants.dart';
export 'src/winrt/winrt_prototypes.dart'
    hide winrt, winrt_string, winrt_typeresolution;
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
export 'src/generated/IFileDialog2.dart' show IFileDialog2, IID_IFileDialog2;
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
export 'src/generated/IMetaDataDispenser.dart'
    show IMetaDataDispenser, IID_IMetaDataDispenser;
export 'src/generated/IMetaDataDispenserEx.dart'
    show IMetaDataDispenserEx, IID_IMetaDataDispenserEx;
export 'src/generated/IMetaDataImport.dart'
    show IMetaDataImport, IID_IMetaDataImport;
export 'src/generated/IMetaDataImport2.dart'
    show IMetaDataImport2, IID_IMetaDataImport2;
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
export 'src/generated/IPropertyValue.dart'
    show IPropertyValue, IID_IPropertyValue;
