import 'dart:ffi';

import 'format.dart';

/// Base class for all clipboard data types.
sealed class ClipboardData {
  const ClipboardData._(this.format);

  /// File list data (CF_HDROP).
  const factory ClipboardData.fileList(List<String> files) = FileListData;

  /// Pointer data for custom clipboard formats.
  const factory ClipboardData.pointer(
    Pointer<Uint8> pointer,
    int lengthInBytes,
    ClipboardFormat format,
  ) = PointerData;

  /// Unicode text data (CF_UNICODETEXT).
  const factory ClipboardData.unicodeText(String text) = UnicodeTextData;

  /// The format of the data.
  final ClipboardFormat format;
}

/// File list data (CF_HDROP).
final class FileListData extends ClipboardData {
  const FileListData(this.files) : super._(ClipboardFormat.fileList);

  /// The list of files in this clipboard data.
  final List<String> files;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FileListData) return false;

    // Compare the list contents for equality.
    return files.length == other.files.length &&
        files.every((file) => other.files.contains(file));
  }

  @override
  int get hashCode => Object.hashAll(files);

  @override
  String toString() => 'FileListData($files, $format)';
}

/// Pointer data for custom formats.
final class PointerData extends ClipboardData {
  const PointerData(
    this.pointer,
    this.lengthInBytes,
    ClipboardFormat format,
  ) : super._(format);

  /// The pointer to the data.
  final Pointer<Uint8> pointer;

  /// The length of the data in bytes.
  final int lengthInBytes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PointerData &&
          pointer.address == other.pointer.address &&
          lengthInBytes == other.lengthInBytes &&
          format == other.format;

  @override
  int get hashCode => Object.hash(pointer.address, lengthInBytes, format);

  @override
  String toString() => 'PointerData($pointer, $lengthInBytes, $format)';
}

/// Unicode text data (CF_UNICODETEXT).
final class UnicodeTextData extends ClipboardData {
  const UnicodeTextData(this.text) : super._(ClipboardFormat.unicodeText);

  /// The Unicode encoded text in this clipboard data.
  final String text;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is UnicodeTextData && text == other.text;

  @override
  int get hashCode => text.hashCode;

  @override
  String toString() => 'UnicodeTextData($text, $format)';
}
