// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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

  /// Returns a list of the [ClipboardFormat]s currently available in the
  /// clipboard.
  ///
  /// Returns an empty list if the clipboard is empty or the operation fails.
  static List<ClipboardFormat> get formats {
    if (isEmpty) return [];

    try {
      return _execute(() {
        final formats = <ClipboardFormat>[];

        using((arena) {
          const maxChars = 256;
          var currFormat = EnumClipboardFormats(NULL);

          while (currFormat != 0) {
            final nameBuffer = wsalloc(maxChars);
            GetClipboardFormatName(currFormat, nameBuffer, maxChars);
            String? nameString = nameBuffer.toDartString();
            if (nameString.isEmpty) {
              nameString = _clipboardFormats[currFormat];
            }

            final format = ClipboardFormat(currFormat, name: nameString);
            formats.add(format);
            currFormat = EnumClipboardFormats(currFormat);
            free(nameBuffer);
          }
        });

        return formats;
      });
    } on ClipboardException {
      return [];
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

  /// Whether the clipboard is empty.
  static bool get isEmpty => numberOfFormats == 0;

  /// The number of different data formats currently on the clipboard.
  static int get numberOfFormats => CountClipboardFormats();

  /// Registers a clipboard format with the given [name] and returns its id.
  ///
  /// If a format has already been registered with the given name, its id is
  /// returned.
  static int registerFormat(String name) {
    final lpszFormat = name.toNativeUtf16();
    try {
      final formatId = RegisterClipboardFormat(lpszFormat);
      if (formatId == 0) {
        throw ClipboardException('Failed to register clipboard format: $name');
      }
      return formatId;
    } finally {
      free(lpszFormat);
    }
  }

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

  /// A map of default clipboard format IDs to names.
  static const _clipboardFormats = <int, String>{
    CF_TEXT: 'CF_TEXT',
    CF_BITMAP: 'CF_BITMAP',
    CF_METAFILEPICT: 'CF_METAFILEPICT',
    CF_SYLK: 'CF_SYLK',
    CF_DIF: 'CF_DIF',
    CF_TIFF: 'CF_TIFF',
    CF_OEMTEXT: 'CF_OEMTEXT',
    CF_DIB: 'CF_DIB',
    CF_PALETTE: 'CF_PALETTE',
    CF_PENDATA: 'CF_PENDATA',
    CF_RIFF: 'CF_RIFF',
    CF_WAVE: 'CF_WAVE',
    CF_UNICODETEXT: 'CF_UNICODETEXT',
    CF_ENHMETAFILE: 'CF_ENHMETAFILE',
    CF_HDROP: 'CF_HDROP',
    CF_LOCALE: 'CF_LOCALE',
    CF_DIBV5: 'CF_DIBV5',
    CF_OWNERDISPLAY: 'CF_OWNERDISPLAY',
    CF_DSPTEXT: 'CF_DSPTEXT',
    CF_DSPBITMAP: 'CF_DSPBITMAP',
    CF_DSPMETAFILEPICT: 'CF_DSPMETAFILEPICT',
    CF_DSPENHMETAFILE: 'CF_DSPENHMETAFILE',
    CF_PRIVATEFIRST: 'CF_PRIVATEFIRST',
    CF_PRIVATELAST: 'CF_PRIVATELAST',
    CF_GDIOBJFIRST: 'CF_GDIOBJFIRST',
    CF_GDIOBJLAST: 'CF_GDIOBJLAST',
  };
}
