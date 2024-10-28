/// A Dart library that provides a friendly Dart API for accessing the Windows
/// Clipboard.
///
/// It allows you to perform common clipboard operations, including:
///
/// - Copying data to the clipboard
/// - Pasting data from the clipboard
/// - Checking the available data formats on the clipboard
/// - Clearing the clipboard
/// - Listening for changes in clipboard data
///
/// The `Clipboard` class provides static methods for interacting with the
/// clipboard, allowing you to easily manage text, file lists, and custom
/// clipboard formats. It also offers streams to listen for changes in specific
/// types of data.
library;

export 'src/clipboard.dart';
export 'src/data.dart';
export 'src/exception.dart';
export 'src/format.dart';
