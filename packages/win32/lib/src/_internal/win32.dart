@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../types.dart';
import '../win32/ole32.g.dart';
import '../win32_error.dart';
import 'win32.g.dart';

/// Native return wrapper for Win32 APIs that report failure via
/// `SetLastError` / `GetLastError`.
///
/// Many Win32 APIs do **not** return rich error information directly. Instead,
/// they:
/// - Return a sentinel value (e.g., `BOOL`, `HANDLE`, `NULL`)
/// - Store extended error details in thread-local state retrievable via
///   `GetLastError()`
///
/// When such APIs are called through Dart FFI, invoking `GetLastError()`
/// *after* the native call is fundamentally unreliable:
/// - Dart ↔ native transitions may overwrite the last-error state
/// - The Dart VM and FFI glue can invoke additional Win32 APIs internally
/// - See: https://github.com/dart-lang/sdk/issues/38832
///
/// [NativeWin32Result] solves this by:
/// - Capturing the result value **and**
/// - Reading `GetLastError()` **immediately on the native side**
/// - Returning both to Dart as a single, atomic value
@internal
final class NativeWin32Result extends Struct {
  @DWORD()
  external int _error;

  /// The raw return value produced by the wrapped Win32 API.
  ///
  /// The concrete type depends on the specific wrapper (e.g., `BOOL`,
  /// `HANDLE`, pointer, integer).
  external NativeWin32ResultValue value;

  /// The captured Win32 error code on the native side.
  WIN32_ERROR get error => WIN32_ERROR(_error);
}

@Native(symbol: 'CoTaskMemFree')
// ignore: non_constant_identifier_names
external void _CoTaskMemFree(Pointer pv);

/// The native address of the [CoTaskMemFree] function.
@internal
final Pointer<NativeFunction<Void Function(Pointer)>> coTaskMemFreeAddress =
    Native.addressOf(_CoTaskMemFree);

@internal
@Native<Void Function(Pointer, Size, Pointer<Utf8>, Pointer<Utf8>)>(
  symbol: 'RegisterAllocation',
)
external void registerAllocation(
  Pointer ptr,
  int size,
  Pointer<Utf8> type,
  Pointer<Utf8> stack,
);

@internal
@Native(symbol: 'UnregisterAllocation')
external void unregisterAllocation(Pointer ptr);
