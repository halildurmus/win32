import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'models/models.dart';

/// Allocates movable memory. Memory blocks are never moved in physical memory,
/// but they can be moved within the default heap. The return value is a handle
/// to the memory object. To translate the handle into a pointer, use the
/// GlobalLock function.
///
/// This value cannot be combined with GMEM_FIXED.
// ignore: constant_identifier_names
const GMEM_MOVABLE = 0x0002;

final class Clipboard {
  /// Clears the clipboard.
  ///
  /// Returns `true` if the operation succeeds; `false` otherwise.
  static bool clear() {
    try {
      return _execute(() => EmptyClipboard() == TRUE);
    } on ClipboardException {
      return false;
    }
  }

  /// Retrieves the text from the clipboard.
  ///
  /// Returns `null` if the clipboard doesn't contain text or the operation
  /// fails.
  static String? getText() {
    if (!hasText) return null;

    try {
      return _execute(() {
        final handle = GetClipboardData(CF_UNICODETEXT);
        if (handle == NULL) return null;

        final ptr = Pointer.fromAddress(handle);
        final rawPtr = GlobalLock(ptr);
        if (rawPtr.address == 0) return null;

        final text = rawPtr.cast<Utf16>().toDartString();
        GlobalUnlock(ptr);

        return text;
      });
    } on ClipboardException {
      return null;
    }
  }

  /// Whether the given [clipboardFormat] is available in the clipboard.
  static bool hasFormat(ClipboardFormat clipboardFormat) =>
      IsClipboardFormatAvailable(clipboardFormat.formatId) == TRUE;

  /// Checks if the clipboard contains text data.
  static bool get hasText => hasFormat(ClipboardFormat.text);

  /// Stores the given [text] on the clipboard.
  static bool setText(String text) {
    try {
      return _execute(() {
        if (EmptyClipboard() == FALSE) return false;
        final units = text.codeUnits;
        final dwBytes = (units.length + 1) * sizeOf<Uint16>();
        final hMem = GlobalAlloc(GMEM_MOVABLE, dwBytes);
        if (hMem.address == 0) return false;

        final rawPtr = GlobalLock(hMem);
        if (rawPtr.address == 0) return false;

        final stringPtr = rawPtr.cast<Uint16>();
        for (var i = 0; i < units.length; i++) {
          stringPtr[i] = units[i];
        }
        stringPtr[units.length] = NULL;
        GlobalUnlock(hMem);

        return SetClipboardData(CF_UNICODETEXT, hMem.address) != NULL;
      });
    } on ClipboardException {
      return false;
    }
  }

  /// Wraps the given [function] in calls to [OpenClipboard] and
  /// [CloseClipboard].
  static R _execute<R>(R Function() function) {
    if (OpenClipboard(NULL) == FALSE) {
      throw const ClipboardException('Failed to open the Clipboard.');
    }

    try {
      return function();
    } finally {
      if (CloseClipboard() == FALSE) {
        throw const ClipboardException('Failed to close the Clipboard.');
      }
    }
  }
}
