import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'data.dart';
import 'exception.dart';
import 'format.dart';
import 'listener.dart';
import 'utils.dart';

/// Provides a set of methods and properties for interacting with the Windows
/// Clipboard.
abstract final class Clipboard {
  /// Clears the contents of the clipboard.
  ///
  /// Returns `true` if the operation succeeds; otherwise, returns `false`.
  static bool clear() {
    try {
      return performClipboardOperation(() => EmptyClipboard() == TRUE);
    } on ClipboardException {
      return false;
    }
  }

  /// Retrieves a list of available [ClipboardFormat]s in the clipboard.
  ///
  /// Returns an empty list if the clipboard is empty or the operation fails.
  static List<ClipboardFormat> get formats {
    if (isEmpty) return const [];

    try {
      return performClipboardOperation(() {
        final formats = <ClipboardFormat>[];
        var currentFormat = EnumClipboardFormats(NULL);

        while (currentFormat != 0) {
          formats.add(getClipboardFormat(currentFormat));
          currentFormat = EnumClipboardFormats(currentFormat);
        }

        return formats;
      });
    } on ClipboardException {
      return const [];
    }
  }

  /// Retrieves data from the clipboard in the specified [format].
  ///
  /// Returns `null` if the clipboard does not contain data or the operation
  /// fails.
  @pragma('vm:prefer-inline')
  static ClipboardData? getData(ClipboardFormat format) => switch (format) {
        ClipboardFormat.fileList => getFileListData(),
        ClipboardFormat.unicodeText => getUnicodeTextData(),
        _ => getPointerData(format)
      };

  /// Stores the provided [data] on the clipboard.
  ///
  /// Throws an [ArgumentError] if the [data] is [FileListData] and the list of
  /// files is empty.
  ///
  /// Returns `true` if the operation succeeds; otherwise, returns `false`.
  @pragma('vm:prefer-inline')
  static bool setData(ClipboardData data) => switch (data) {
        FileListData(:final files) => setFileList(files),
        PointerData() => data.storeData(),
        UnicodeTextData(:final text) => setText(text),
      };

  /// Retrieves file list data on the clipboard.
  @pragma('vm:prefer-inline')
  static List<String> getFileList() => getFileListData()?.files ?? const [];

  /// Stores file list data on the clipboard.
  ///
  /// Throws an [ArgumentError] if [files] is empty.
  ///
  /// Returns `true` if the operation succeeds; otherwise, returns `false`.
  @pragma('vm:prefer-inline')
  static bool setFileList(List<String> files) => files.isEmpty
      ? throw ArgumentError.value(files, 'files', 'Cannot be empty')
      : FileListData(files).storeData();

  /// Retrieves text data on the clipboard.
  @pragma('vm:prefer-inline')
  static String? getText() => getUnicodeTextData()?.text;

  /// Stores text data on the clipboard.
  ///
  /// Returns `true` if the operation succeeds; otherwise, returns `false`.
  @pragma('vm:prefer-inline')
  static bool setText(String text) => UnicodeTextData(text).storeData();

  /// Retrieves the first available clipboard format from a list of [formats].
  ///
  /// Returns `null` if the clipboard is empty or none of the specified formats
  /// are present.
  static ClipboardFormat? getPriorityFormat(List<ClipboardFormat> formats) {
    final paFormatPriorityList = calloc<UINT>(formats.length)
      ..asTypedList(formats.length)
          .setAll(0, formats.map((format) => format.id));
    final result =
        GetPriorityClipboardFormat(paFormatPriorityList, formats.length);
    if (result <= 0) return null;
    return formats.where((format) => format.id == result).firstOrNull;
  }

  /// Checks if the clipboard contains data in the specified [format].
  @pragma('vm:prefer-inline')
  static bool hasFormat(ClipboardFormat format) =>
      IsClipboardFormatAvailable(format.id) == TRUE;

  /// Checks if the clipboard contains file list data.
  @pragma('vm:prefer-inline')
  static bool get hasFileList => hasFormat(ClipboardFormat.fileList);

  /// Checks if the clipboard contains Unicode text data.
  @pragma('vm:prefer-inline')
  static bool get hasText => hasFormat(ClipboardFormat.unicodeText);

  /// Checks if the clipboard is empty.
  @pragma('vm:prefer-inline')
  static bool get isEmpty => numberOfFormats == 0;

  /// Gets the number of different data formats currently on the clipboard.
  @pragma('vm:prefer-inline')
  static int get numberOfFormats => CountClipboardFormats();

  /// Emits a [ClipboardData] object whenever the data with the specified
  /// [format] on the clipboard changes.
  static Stream<ClipboardData> onDataChanged(ClipboardFormat format) =>
      onClipboardDataChanged.transform(
        StreamTransformer.fromHandlers(
          handleData: (_, sink) {
            if (getData(format) case final data?) sink.add(data);
          },
        ),
      );

  /// Emits a file list whenever the file list on the clipboard changes.
  static Stream<List<String>> get onFileListChanged =>
      onClipboardDataChanged.transform(
        StreamTransformer.fromHandlers(
          handleData: (_, sink) {
            if (getFileList() case final fileList when fileList.isNotEmpty) {
              sink.add(fileList);
            }
          },
        ),
      );

  /// Emits a string whenever the text on the clipboard changes.
  static Stream<String> get onTextChanged => onClipboardDataChanged.transform(
        StreamTransformer.fromHandlers(
          handleData: (_, sink) {
            if (getText() case final text?) sink.add(text);
          },
        ),
      );

  /// Registers a clipboard format with the given [name] and returns it as a
  /// [ClipboardFormat].
  ///
  /// If a format with the given [name] is already registered, the existing
  /// format is returned.
  ///
  /// Throws a [ClipboardException] if the format could not be registered.
  static ClipboardFormat registerFormat(String name) {
    final lpszFormat = name.toNativeUtf16();
    try {
      final formatId = RegisterClipboardFormat(lpszFormat);
      if (formatId == 0) {
        throw ClipboardException('Failed to register clipboard format: $name');
      }
      return ClipboardFormat(formatId, name);
    } finally {
      free(lpszFormat);
    }
  }
}
