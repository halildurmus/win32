import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import 'com/interface.g.dart';
import 'com/iunknown.g.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'exception.dart';
import 'extensions/int.dart';
import 'extensions/pointer.dart';
import 'extensions/string.dart';
import 'guid.dart';
import 'pwstr.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/kernel32.g.dart';
import 'win32/ole32.g.dart';
import 'win32/shell32.g.dart';
import 'win32/user32.g.dart';
import 'win32_result.dart';

/// Creates a COM object instance identified by [clsid] and returns it as the
/// interface specified by [T].
///
/// This is the canonical entry point for COM object instantiation in
/// `package:win32`. It wraps [CoCreateInstance], performs GUID marshaling,
/// and enforces interface typing via [T].
///
/// - COM **must** be initialized on the current thread (typically via
///   [CoInitializeEx]).
/// - The COM class must be registered.
/// - The interface [T] must be registered via [ComInterface.register].
///
/// All COM interfaces provided by this package are pre-registered. Custom
/// interfaces must be registered manually before calling this function.
///
/// Throws a [WindowsException] if:
/// - COM is not initialized
/// - The class is not registered
/// - The requested interface is not supported
///
/// Example:
/// ```dart
/// final dialog = createInstance<IFileDialog>(FileOpenDialog);
/// ```
///
/// {@category com}
T createInstance<T extends IUnknown>(GUID clsid) => using(
  (arena) =>
      CoCreateInstance<T>(clsid.toNative(allocator: arena), null, CLSCTX_ALL),
);

/// Initializes a Win32-style application entry point and invokes a Dart
/// equivalent of [WinMain](https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-winmain).
///
/// This helper sets up the minimal Windows runtime environment expected by
/// traditional Win32 applications:
///
/// - Parses the command line using `CommandLineToArgvW`
/// - Retrieves the process `HINSTANCE`
/// - Extracts startup information (including `nShowCmd`)
///
/// This allows Dart console applications to behave like native Win32 GUI
/// applications without boilerplate.
///
/// To use, add the following to your command-line app:
/// ```dart
/// void main() => initApp(winMain);
/// ```
///
/// Then define a [winMain] function as:
/// ```dart
/// void winMain(HINSTANCE hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
///   // Your application logic here...
/// }
/// ```
void initApp(
  void Function(
    HINSTANCE hInstance,
    List<String> args,
    SHOW_WINDOW_CMD nShowCmd,
  )
  winMain,
) {
  using((arena) {
    // Parse command-line arguments using native Win32 APIs.
    final commandLine = GetCommandLine();
    if (commandLine.isNull) {
      throw StateError('Could not retrieve command-line arguments.');
    }

    final nArgs = arena<Int32>();
    final args = <String>[];

    final szArgList = CommandLineToArgv(commandLine, nArgs).value;
    if (szArgList.isNotNull) {
      for (var i = 0; i < nArgs.value; i++) {
        final arg = szArgList[i].toDartString();
        args.add(arg);
      }
      final Win32Result(:value, :error) = LocalFree(HLOCAL(szArgList));
      assert(value.isNull, 'LocalFree failed with ${error.toHRESULT()}');
    }

    final hInstance = GetModuleHandle(null).value;
    final lpStartupInfo = arena<STARTUPINFO>();
    GetStartupInfo(lpStartupInfo);

    winMain(
      HINSTANCE(hInstance),
      args,
      lpStartupInfo.ref.dwFlags & STARTF_USESHOWWINDOW == STARTF_USESHOWWINDOW
          ? SHOW_WINDOW_CMD(lpStartupInfo.ref.wShowWindow)
          : SW_SHOWDEFAULT,
    );
  });
}

/// Returns `true` if the Component Object Model (COM) is initialized on the
/// current thread.
///
/// This function performs a non-invasive probe using [CoGetApartmentType].
/// No COM state is modified.
///
/// {@category com}
bool get isComInitialized => using((arena) {
  final pAptType = arena<Int32>();
  final pAptQualifier = arena<Int32>();
  try {
    CoGetApartmentType(pAptType, pAptQualifier);
    return true;
  } on WindowsException {
    // COM is not initialized on this thread.
    return false;
  }
});

/// Returns `true` if the Windows Runtime (WinRT) is available on the current
/// system.
///
/// This check is performed by attempting to load the core WinRT API set.
/// It does not initialize WinRT or create any runtime objects.
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

/// Frees memory allocated by Win32-compatible allocators.
///
/// This function is allocator-agnostic and may safely free memory allocated
/// with:
/// - [calloc]
/// - [malloc]
/// - [adaptiveCalloc]
/// - [adaptiveMalloc]
/// - [diagnosticCalloc]
/// - [diagnosticMalloc]
///
/// Passing a NULL pointer is a programming error.
@pragma('vm:prefer-inline')
void free(Pointer pointer) {
  assert(pointer.isNotNull, "Pointer must not be a 'nullptr'.");
  adaptiveCalloc.free(pointer);
}

/// Dumps the raw memory contents of a struct for debugging.
///
/// The memory is interpreted as UTF-16 words and printed in hexadecimal.
/// This is useful when validating native layout, alignment, or ABI behavior.
void printStruct(Pointer struct, int sizeInBytes) {
  assert(struct.isNotNull, "Pointer must not be a 'nullptr'.");
  final words = <int>[];
  final ptr = struct.cast<WCHAR>();
  for (var i = 0; i < sizeInBytes ~/ 2; i++) {
    words.add((ptr + i).value);
  }
  print(words.map((word) => word.toHexString(16)).join(', '));
}

/// Enables per-monitor DPI awareness (V2) for the current process.
///
/// This significantly improves rendering quality on high-DPI displays.
///
/// If the call fails, a warning is emitted to the debugger output. Failure is
/// non-fatal and typically indicates an unsupported Windows version.
void registerHighDPISupport() {
  if (!SetProcessDpiAwarenessContext(
    DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2,
  ).value) {
    final outputString = 'WARNING: Could not set DPI awareness'.toPcwstr();
    OutputDebugString(outputString);
    free(outputString);
  }
}

/// Allocates a mutable UTF-16 string buffer (`PWSTR`) with capacity for
/// [length] UTF-16 code units, including the terminating NUL character.
///
/// The returned pointer must be freed using [free], unless allocated through
/// an [Arena].
///
/// This is intended for Win32 APIs that write UTF-16 strings into
/// caller-provided buffers.
///
/// Example:
/// ```dart
/// final buffer = wsalloc(260);
/// GetModuleFileName(NULL, buffer, 260);
/// free(buffer);
/// ```
PWSTR wsalloc([int length = 1, Allocator allocator = adaptiveCalloc]) =>
    PWSTR(allocator<WCHAR>(length * 2).cast());
