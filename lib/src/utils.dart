import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:win32/win32.dart';

import 'data.dart';
import 'exception.dart';
import 'format.dart';

/// A map of standard clipboard format IDs to their names.
@internal
const standardFormats = <int, String>{
  CLIPBOARD_FORMAT.CF_TEXT: 'CF_TEXT',
  CLIPBOARD_FORMAT.CF_BITMAP: 'CF_BITMAP',
  CLIPBOARD_FORMAT.CF_METAFILEPICT: 'CF_METAFILEPICT',
  CLIPBOARD_FORMAT.CF_SYLK: 'CF_SYLK',
  CLIPBOARD_FORMAT.CF_DIF: 'CF_DIF',
  CLIPBOARD_FORMAT.CF_TIFF: 'CF_TIFF',
  CLIPBOARD_FORMAT.CF_OEMTEXT: 'CF_OEMTEXT',
  CLIPBOARD_FORMAT.CF_DIB: 'CF_DIB',
  CLIPBOARD_FORMAT.CF_PALETTE: 'CF_PALETTE',
  CLIPBOARD_FORMAT.CF_PENDATA: 'CF_PENDATA',
  CLIPBOARD_FORMAT.CF_RIFF: 'CF_RIFF',
  CLIPBOARD_FORMAT.CF_WAVE: 'CF_WAVE',
  CLIPBOARD_FORMAT.CF_UNICODETEXT: 'CF_UNICODETEXT',
  CLIPBOARD_FORMAT.CF_ENHMETAFILE: 'CF_ENHMETAFILE',
  CLIPBOARD_FORMAT.CF_HDROP: 'CF_HDROP',
  CLIPBOARD_FORMAT.CF_LOCALE: 'CF_LOCALE',
  CLIPBOARD_FORMAT.CF_DIBV5: 'CF_DIBV5',
  CLIPBOARD_FORMAT.CF_OWNERDISPLAY: 'CF_OWNERDISPLAY',
  CLIPBOARD_FORMAT.CF_DSPTEXT: 'CF_DSPTEXT',
  CLIPBOARD_FORMAT.CF_DSPBITMAP: 'CF_DSPBITMAP',
  CLIPBOARD_FORMAT.CF_DSPMETAFILEPICT: 'CF_DSPMETAFILEPICT',
  CLIPBOARD_FORMAT.CF_DSPENHMETAFILE: 'CF_DSPENHMETAFILE',
};

/// Returns the [ClipboardFormat] for the given [formatId].
@internal
ClipboardFormat getClipboardFormat(int formatId) {
  final name =
      _getClipboardFormatName(formatId) ?? _getPredefinedFormatName(formatId);
  return ClipboardFormat(formatId, name ?? 'N/A');
}

String? _getClipboardFormatName(int formatId) {
  final lpszFormatName = wsalloc(256);
  final strLength = GetClipboardFormatName(formatId, lpszFormatName, 256);
  if (strLength > 0) {
    final name = lpszFormatName.toDartString();
    free(lpszFormatName);
    return name;
  }
  free(lpszFormatName);
  return null;
}

String? _getPredefinedFormatName(int formatId) {
  if (standardFormats.containsKey(formatId)) {
    return standardFormats[formatId];
  } else if (formatId >= CLIPBOARD_FORMAT.CF_GDIOBJFIRST &&
      formatId <= CLIPBOARD_FORMAT.CF_GDIOBJLAST) {
    return 'CF_GDIOBJ($formatId)';
  } else if (formatId >= CLIPBOARD_FORMAT.CF_PRIVATEFIRST &&
      formatId <= CLIPBOARD_FORMAT.CF_PRIVATELAST) {
    return 'CF_PRIVATE($formatId)';
  }
  return null;
}

/// Executes the provided [function] to retrieve data from the clipboard for the
/// [format].
///
/// Returns `null` if the clipboard does not contain data or the operation
/// fails.
R? _getData<R extends ClipboardData>(
  ClipboardFormat format,
  R Function(Pointer) function,
) {
  try {
    return performClipboardOperation(() {
      final handle = GetClipboardData(format.id);
      if (handle == NULL) return null;

      final ptr = Pointer.fromAddress(handle);
      final rawPtr = GlobalLock(ptr);
      if (rawPtr.address == 0) return null;

      final result = function(rawPtr);
      GlobalUnlock(ptr);
      return result;
    });
  } catch (_) {
    return null;
  }
}

@internal
FileListData? getFileListData() => _getData(ClipboardFormat.fileList, (ptr) {
      final numberOfFiles = DragQueryFile(ptr.address, 0xFFFFFFFF, nullptr, 0);
      if (numberOfFiles == 0) return const FileListData([]);
      final files = List<String>.filled(numberOfFiles, '');

      for (var i = 0; i < numberOfFiles; i++) {
        final requiredSize = DragQueryFile(ptr.address, i, nullptr, 0);
        if (requiredSize == 0) return const FileListData([]);

        final buffer = wsalloc(requiredSize + 1);
        if (DragQueryFile(ptr.address, i, buffer, requiredSize + 1) == 0) {
          free(buffer);
          return const FileListData([]);
        }

        files[i] = buffer.toDartString(length: requiredSize);
        free(buffer);
      }

      return FileListData(files);
    });

@internal
PointerData? getPointerData(ClipboardFormat format) => _getData(format, (ptr) {
      final size = GlobalSize(ptr);
      final newPtr = malloc<Uint8>(size);
      // Copy the data to a new memory location to prevent it from being freed
      // when the lock is released.
      newPtr.asTypedList(size).setAll(0, ptr.cast<Uint8>().asTypedList(size));
      return PointerData(newPtr, size, format);
    });

@internal
UnicodeTextData? getUnicodeTextData() => _getData(
    ClipboardFormat.unicodeText,
    (ptr) => UnicodeTextData(
          String.fromCharCodes(
            ptr.cast<Uint16>().asTypedList((GlobalSize(ptr) ~/ 2) - 1),
          ),
        ));

/// Executes the provided [function] within the clipboard context.
///
/// Ensures the clipboard is properly _opened_ before the [function] is
/// executed, and _closed_ after its execution, maintaining clipboard integrity.
///
/// Throws a [ClipboardException] if the clipboard could not be opened or
/// closed.
@internal
R performClipboardOperation<R>(R Function() function) {
  if (OpenClipboard(NULL) == FALSE) {
    throw const ClipboardException('Failed to open the clipboard.');
  }

  try {
    return function();
  } finally {
    if (CloseClipboard() == FALSE) {
      // ignore: throw_in_finally
      throw const ClipboardException('Failed to close the clipboard.');
    }
  }
}

@internal
extension FileListDataExtension on FileListData {
  /// Stores the file list data on the clipboard.
  @internal
  bool storeData() {
    try {
      return performClipboardOperation(() {
        if (EmptyClipboard() == FALSE) return false;
        final hMem = _allocateFileList(files);
        if (hMem == null) return false;
        return SetClipboardData(format.id, hMem.address) != NULL;
      });
    } catch (_) {
      return false;
    }
  }
}

@internal
extension PointerDataExtension on PointerData {
  /// Stores the pointer data on the clipboard.
  @internal
  bool storeData() {
    try {
      return performClipboardOperation(() {
        if (EmptyClipboard() == FALSE) return false;
        final hMem = _allocatePointerData(pointer, lengthInBytes);
        if (hMem == null) return false;
        return SetClipboardData(format.id, hMem.address) != NULL;
      });
    } catch (_) {
      return false;
    }
  }
}

@internal
extension UnicodeTextDataExtension on UnicodeTextData {
  /// Stores the Unicode text data on the clipboard.
  @internal
  bool storeData() {
    try {
      return performClipboardOperation(() {
        if (EmptyClipboard() == FALSE) return false;
        final hMem = _allocateUnicodeText(text);
        if (hMem == null) return false;
        return SetClipboardData(format.id, hMem.address) != NULL;
      });
    } catch (_) {
      return false;
    }
  }
}

/// Allocates memory for file list data.
Pointer? _allocateFileList(List<String> files) {
  assert(files.isNotEmpty, 'The list of files cannot be empty.');
  final dropFilesSize = sizeOf<DROPFILES>();

  // Calculate the amount of memory we need to store all of the strings, and
  // null-terminators.
  var stringSize = 0;
  for (final file in files) {
    stringSize += file.length + 1;
  }
  stringSize++; // Allow room for a terminating null after last value.

  // Allocate enough memory for the DROPFILES struct and the file list.
  final dwBytes = dropFilesSize + stringSize * sizeOf<Uint16>();
  final hMem = GlobalAlloc(GLOBAL_ALLOC_FLAGS.GMEM_MOVEABLE, dwBytes);
  if (hMem.address == 0) return null;
  final rawPtr = GlobalLock(hMem);
  if (rawPtr.address == 0) return null;

  final dropFiles = rawPtr.cast<DROPFILES>();
  dropFiles.ref
    ..pFiles = dropFilesSize // Offset to where the file list start.
    ..fWide = TRUE; // File names are in wide characters (UTF-16).

  final pFiles = (rawPtr.cast<Uint8>() + dropFilesSize)
      .cast<Uint16>()
      .asTypedList(stringSize);
  var index = 0;

  // Copy the file list to the allocated memory.
  for (final file in files) {
    final units = file.codeUnits;
    pFiles.setAll(index, units);
    pFiles[index + units.length] = 0; // Null-terminate string.
    index += units.length + 1;
  }

  // Null-terminate the file list.
  pFiles[index] = 0;

  GlobalUnlock(hMem);
  return hMem;
}

/// Allocates memory for a pointer data.
Pointer? _allocatePointerData(Pointer<Uint8> pointer, int lengthInBytes) {
  final hMem = GlobalAlloc(GLOBAL_ALLOC_FLAGS.GMEM_MOVEABLE, lengthInBytes);
  if (hMem.address == 0) return null;
  final rawPtr = GlobalLock(hMem);
  if (rawPtr.address == 0) return null;
  rawPtr
      .cast<Uint8>()
      .asTypedList(lengthInBytes)
      .setAll(0, pointer.cast<Uint8>().asTypedList(lengthInBytes));
  GlobalUnlock(hMem);
  return hMem;
}

/// Allocates memory for Unicode text.
Pointer? _allocateUnicodeText(String text) {
  final units = text.codeUnits;
  final dwBytes = (units.length + 1) * sizeOf<Uint16>();
  final hMem = GlobalAlloc(GLOBAL_ALLOC_FLAGS.GMEM_MOVEABLE, dwBytes);
  if (hMem.address == 0) return null;
  final rawPtr = GlobalLock(hMem);
  if (rawPtr.address == 0) return null;
  rawPtr.cast<Uint16>().asTypedList(units.length).setAll(0, units);
  GlobalUnlock(hMem);
  return hMem;
}
