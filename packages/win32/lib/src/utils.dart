import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'allocator.dart';
import 'com/interface.g.dart';
import 'com/iunknown.g.dart';
import 'constants.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'exception.dart';
import 'extensions/int.dart';
import 'extensions/pointer.dart';
import 'guid.dart';
import 'pcwstr.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/kernel32.g.dart';
import 'win32/ole32.g.dart';
import 'win32/shell32.g.dart';
import 'win32/user32.g.dart';

/// Creates an instance of a COM object using its CLSID (class identifier) and
/// casts it to a specific interface defined by the type parameter [T].
///
/// Ensure COM is initialized on the current thread before calling this
/// function, typically using [CoInitializeEx].
///
/// Throws a [WindowsException] if COM is not initialized, the class is not
/// registered, or the requested interface is unavailable.
///
/// This function calls the [CoCreateInstance] function to create the
/// COM object, which uses the [ComInterface.type] method to retrieve metadata
/// about the target interface defined by [T], including its IID (Interface ID)
/// and instantiation logic.
/// All COM interfaces provided by this package are pre-registered. Custom COM
/// interfaces must be registered manually using the [ComInterface.register]
/// method before calling this function.
///
/// Example:
/// ```dart
/// // Create a COM object instance (e.g., IFileDialog).
/// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
/// ```
///
/// {@category com}
@pragma('vm:prefer-inline')
T createInstance<T extends IUnknown>(Guid clsid) =>
    CoCreateInstance<T>(clsid.ptr, null, CLSCTX_ALL);

/// Sets up a [WinMain](https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-winmain)
/// entry point with all the necessary initialization for a Windows application.
///
/// To use, add the following to your command-line app:
/// ```dart
/// void main() => initApp(winMain);
/// ```
///
/// Then define a [winMain] function as:
/// ```dart
/// void winMain(int hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
///   // Your application logic here...
/// }
/// ```
void initApp(
  void Function(int hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd)
  winMain,
) {
  final nArgs = loggingCalloc<Int32>();
  final lpStartupInfo = loggingCalloc<STARTUPINFO>();
  final args = <String>[];

  // Parse command line args using Win32 functions, to reduce ceremony in the
  // app that uses this.
  final commandLine = GetCommandLine();
  if (commandLine.isNull) {
    free(nArgs);
    free(lpStartupInfo);
    throw StateError('Could not retrieve command-line arguments.');
  }

  final szArgList = CommandLineToArgv(commandLine, nArgs);
  if (!szArgList.isNull) {
    for (var i = 0; i < nArgs.value; i++) {
      final arg = szArgList[i].toDartString();
      args.add(arg);
    }
    final result = LocalFree(szArgList.address);
    assert(result == NULL, 'LocalFree failed for handle $result');
  }

  final hInstance = GetModuleHandle(null);
  GetStartupInfo(lpStartupInfo);

  try {
    // Invoke the user-defined WinMain function.
    winMain(
      hInstance,
      args,
      lpStartupInfo.ref.dwFlags & STARTF_USESHOWWINDOW == STARTF_USESHOWWINDOW
          ? SHOW_WINDOW_CMD(lpStartupInfo.ref.wShowWindow)
          : SW_SHOWDEFAULT,
    );
  } finally {
    free(nArgs);
    free(lpStartupInfo);
  }
}

/// Checks if the Component Object Model (COM) is initialized on the current
/// thread.
///
/// {@category com}
bool get isComInitialized {
  final pAptType = loggingCalloc<Int32>();
  final pAptQualifier = loggingCalloc<Int32>();
  try {
    CoGetApartmentType(pAptType, pAptQualifier);
    return true;
  } on WindowsException {
    // COM is not initialized on this thread.
    return false;
  } finally {
    free(pAptType);
    free(pAptQualifier);
  }
}

/// Checks if the Windows Runtime (WinRT) is available by attempting to load its
/// core library.
///
/// {@category winrt}
bool get isWindowsRuntimeAvailable {
  try {
    DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
    // ignore: avoid_catching_errors
  } on ArgumentError {
    // The library is not available.
    return false;
  }
  return true;
}

/// Frees the allocated memory for the given [pointer].
///
/// The [pointer] must not be NULL, otherwise an assertion error is thrown.
///
/// This function can safely free memory allocated with either [calloc],
/// [malloc], [loggingCalloc], or [loggingMalloc], as the underlying memory
/// allocation functions are interchangeable.
@pragma('vm:prefer-inline')
void free(Pointer pointer) {
  assert(!pointer.isNull, "Pointer must not be a 'nullptr'.");
  loggingCalloc.free(pointer);
}

/// Prints the memory content of a given struct for debugging purposes.
///
/// Reads and displays the memory as a sequence of 16-bit words in hexadecimal
/// format. Useful for inspecting the layout and content of a struct in memory.
void printStruct(Pointer struct, int sizeInBytes) {
  assert(!struct.isNull, "Pointer must not be a 'nullptr'.");
  final words = <int>[];
  final ptr = struct.cast<WCHAR>();
  for (var i = 0; i < sizeInBytes ~/ 2; i++) {
    words.add((ptr + i).value);
  }
  print(words.map((word) => word.toHexString(16)).join(', '));
}

/// Enables high-DPI support for the current process.
///
/// Configures the process to use the
/// [DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2] setting, reducing blurriness on
/// high-DPI displays.
///
/// Note: This requires the application to handle DPI scaling appropriately.
/// If the configuration fails, a warning is logged to the debugger.
void registerHighDPISupport() {
  if (!SetProcessDpiAwarenessContext(
    DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2,
  )) {
    final outputString = w('WARNING: Could not set DPI awareness');
    OutputDebugString(outputString.ptr);
    outputString.free();
  }
}
