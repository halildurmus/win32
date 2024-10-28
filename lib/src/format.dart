import 'package:win32/win32.dart';

/// Represents a data format in the Windows Clipboard.
///
/// It is used to define and work with various data formats that can be stored
/// and retrieved from the clipboard.
final class ClipboardFormat {
  /// Creates an instance of [ClipboardFormat] with the specified [id] and
  /// an [name].
  ///
  /// - The [id] parameter represents the unique identifier for the clipboard
  ///   format.
  /// - The [name] parameter is a human-readable name for the format.
  const ClipboardFormat(this.id, this.name);

  /// The unique identifier of the clipboard format.
  final int id;

  /// A human-readable name for the clipboard format.
  final String name;

  /// File list format.
  static const fileList =
      ClipboardFormat(CLIPBOARD_FORMAT.CF_HDROP, 'CF_HDROP');

  /// The Unicode text format.
  static const unicodeText =
      ClipboardFormat(CLIPBOARD_FORMAT.CF_UNICODETEXT, 'CF_UNICODETEXT');

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClipboardFormat && id == other.id && name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() => 'ClipboardFormat($id, $name)';
}
