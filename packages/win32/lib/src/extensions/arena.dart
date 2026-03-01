import 'package:ffi/ffi.dart';

import '../bstr.dart';
import '../com/iunknown.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../guid.dart';
import '../hstring.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../types.dart';
import '../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../win32/ole32.g.dart';
import '../win32/oleaut32.g.dart';
import 'string.dart';

/// Convenience extensions for binding native resources to an [Arena].
///
/// This extension defines the **scoped ownership model** used throughout the
/// library.
///
/// Any resource created or adopted through these helpers is *owned by the
/// arena* and is automatically released when the arena is disposed.
///
/// The arena acts as a **native lifetime boundary**:
/// - Memory allocated within the arena is freed together
/// - COM interfaces have `release` called exactly once
/// - Win32 string types are destroyed using their correct deallocator
///
/// This eliminates the need for manual cleanup and makes ownership explicit at
/// the API boundary.
///
/// Prefer these helpers whenever you:
/// - Allocate native memory
/// - Create or acquire COM interfaces
/// - Pass temporary strings to Win32 or COM APIs
///
/// Example:
/// ```dart
/// using((arena) {
///   final shell = arena.com<IShellItem>(ShellItem);
///   final path  = arena.pcwstr(r'C:\Windows');
///
///   // Native resources are safe to use within this scope.
/// });
/// // All associated native resources are released here.
/// ```
///
/// If an object is created or adopted through this extension, its lifetime is
/// **exactly equal to the lifetime of the arena** and must not be managed
/// manually.
extension ArenaExtension on Arena {
  /// Adopts an existing COM object into this [Arena].
  ///
  /// This method transfers ownership of an already-created COM interface to the
  /// arena. The arena will call `release` exactly once when it is disposed.
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   // Create a COM object whose lifetime is owned by the arena.
  ///   final dialog = arena.com<IFileOpenDialog>(FileOpenDialog);
  ///
  ///   // Query a secondary interface and explicitly adopt it into the same
  ///   // arena.
  ///   final dialog2 = arena.adopt(dialog.queryInterface<IFileDialog2>());
  ///
  ///   // No explicit release calls are required.
  ///   // The arena will call release on both `dialog` and `dialog2`
  ///   // when this block exits.
  /// });
  /// ```
  T adopt<T extends IUnknown>(T object) =>
      this.using(object, (o) => o.release());

  /// Creates a new COM object and binds its lifetime to this [Arena].
  ///
  /// This is a convenience wrapper around [CoCreateInstance] that:
  /// - Creates the COM object
  /// - Transfers ownership of the initial reference to the arena
  /// - Ensures `release` is called exactly once when the arena is disposed
  ///
  /// The returned interface is safe to use for the duration of the arena scope,
  /// and **must not** be manually released by the caller.
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   // Create a COM object whose initial reference is owned by the arena.
  ///   final dialog = arena.com<IFileOpenDialog>(FileOpenDialog);
  ///
  ///   // Use the interface normally.
  ///   dialog.setTitle(arena.pcwstr('Select a file'));
  ///
  ///   // No explicit release call is required.
  ///   // The arena will call release on `dialog` when this block exits.
  /// });
  /// ```
  ///
  /// Throws a [WindowsException] if `CoCreateInstance` fails.
  T com<T extends IUnknown>(GUID clsid) => adopt(
    CoCreateInstance<T>(clsid.toNative(allocator: this), null, CLSCTX_ALL),
  );

  /// Creates a [BSTR] from a Dart string whose lifetime is bound to this
  /// [Arena].
  ///
  /// The returned string is owned by the arena and is released using
  /// [SysFreeString] when the arena is disposed.
  ///
  /// Use this helper when calling COM APIs that require a `BSTR`.
  BSTR bstr(String string) => this.using(string.toBstr(), SysFreeString);

  /// Creates an [HSTRING] from a Dart string whose lifetime is bound to this
  /// [Arena].
  ///
  /// The returned string is owned by the arena and is released using
  /// [WindowsDeleteString] when the arena is disposed.
  ///
  /// This helper is intended for WinRT APIs that expect an `HSTRING`.
  HSTRING hstring(String string) =>
      this.using(string.toHstring(), WindowsDeleteString);

  /// Creates a null-terminated ANSI string ([PCSTR]) from a Dart string whose
  /// lifetime is bound to this [Arena].
  ///
  /// The string is allocated using the arena allocator and freed automatically
  /// when the arena is disposed.
  ///
  /// Use this helper for Win32 APIs that take read-only ANSI strings (`PCSTR`).
  PCSTR pcstr(String string) => string.toPcstr(allocator: this);

  /// Creates a null-terminated UTF-16 string ([PCWSTR]) from a Dart string
  /// whose lifetime is bound to this [Arena].
  ///
  /// The string is allocated using the arena allocator and freed automatically
  /// when the arena is disposed.
  ///
  /// Use this helper for Win32 APIs that take read-only wide strings
  /// (`PCWSTR`).
  PCWSTR pcwstr(String string) => string.toPcwstr(allocator: this);

  /// Creates a null-terminated ANSI string ([PSTR]) from a Dart string whose
  /// lifetime is bound to this [Arena].
  ///
  /// The string is allocated using the arena allocator and freed automatically
  /// when the arena is disposed.
  ///
  /// Use this helper for Win32 APIs that take mutable ANSI strings (`PSTR`).
  PSTR pstr(String string) => string.toPstr(allocator: this);

  /// Allocates a mutable ANSI string buffer (`PSTR`) with capacity for [length]
  /// characters, including the terminating NUL character.
  ///
  /// This is intended for Win32 APIs that write into caller-provided ANSI
  /// buffers.
  ///
  /// The buffer is owned by the arena and freed automatically when the arena
  /// is disposed.
  PSTR pstrBuffer([int length = 1]) => .new(allocate<BYTE>(length).cast());

  /// Creates a null-terminated UTF-16 string ([PWSTR]) from a Dart string
  /// whose lifetime is bound to this [Arena].
  ///
  /// The string is allocated using the arena allocator and freed automatically
  /// when the arena is disposed.
  ///
  /// Use this helper for Win32 APIs that take mutable wide strings (`PWSTR`).
  PWSTR pwstr(String string) => string.toPwstr(allocator: this);

  /// Allocates a mutable UTF-16 string buffer (`PWSTR`) with capacity for
  /// [length] UTF-16 code units, including the terminating NUL character.
  ///
  /// This is intended for Win32 APIs that write UTF-16 strings into
  /// caller-provided buffers.
  ///
  /// The buffer is owned by the arena and freed automatically when the arena
  /// is disposed.
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   final buffer = arena.pwstrBuffer(260);
  ///   GetModuleFileName(NULL, buffer, 260);
  /// });
  /// ```
  PWSTR pwstrBuffer([int length = 1]) =>
      .new(allocate<WCHAR>(length * 2).cast());
}
